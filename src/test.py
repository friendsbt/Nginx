import requests

r0 = requests.get("http://127.0.0.1:8081/test")
print("r0 " + str(r0.status_code) + '\n' + r0.text)
r1 = requests.get("http://127.0.0.1:8081/test", cookies={"fbt_user_id": "test_uid"})
print("r1 " + str(r1.status_code) + '\n' + r1.text)
r2 = requests.get("http://127.0.0.1:8081/test?token=test_token", cookies={"fbt_user_id": "test_uid"})
print("r2 " + str(r2.status_code) + '\n' + r2.text)
