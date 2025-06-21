# handlers/notify.py
from flask import jsonify

def schedule_notify(request):
    # TODO: ใส่ logic การแจ้งเตือนจากโปรเจคเดิมของคุณตรงนี้
    return jsonify({"notify": "scheduled"}), 200
