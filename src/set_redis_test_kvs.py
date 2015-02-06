import redis
r = redis.StrictRedis(host='localhost', port=6379, db=0)
r.set('test_uid', 'test_token')
