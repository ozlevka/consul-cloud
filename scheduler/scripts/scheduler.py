
import consul


client = consul.Consul()


def main():
    plan = client.kv.get('run/plan', recurse=True)




if __name__ == '__main__':
    main()