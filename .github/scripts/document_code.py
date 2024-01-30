from pydriller import RepositoryMining

def main():
    with open('README.md', 'w') as f:
        for commit in RepositoryMining('.').traverse_commits():
            for modification in commit.modifications:
                if modification.new_path.endswith('.dart'):
                    for comment in modification.diff_parsed['added']:
                        if comment.startswith('//') or comment.startswith('/*'):
                            f.write(f'## {commit.msg}\n')
                            f.write(f'```dart\n{comment}\n```\n')

if __name__ == '__main__':
    main()