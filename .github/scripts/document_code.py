import os
from pydriller import RepositoryMining

def main():
    os.makedirs('../relative/path/to/', exist_ok=True)
    with open('../relative/path/to/README.md', 'w') as f:
        for commit in RepositoryMining('.').traverse_commits():
            for modification in commit.modifications:
                if modification.filename.endswith('.dart'):
                    for line_number, line in modification.diff_parsed['added']:
                        if line.lstrip().startswith('//') or line.lstrip().startswith('/*'):
                            f.write(f'## {commit.msg}\n')
                            f.write(f'```dart\n{line}\n```\n')

if __name__ == '__main__':
    main()