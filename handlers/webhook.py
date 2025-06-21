# handlers/webhook.py
from flask import jsonify

def handle_webhook(request):
    # TODO: ใส่ logic จากโปรเจคเดิมของคุณตรงนี้
    return jsonify({"status": "received"}), 200
