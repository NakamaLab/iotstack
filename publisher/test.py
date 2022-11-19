import paho.mqtt.client as mqtt # mosquitto.py is deprecated
import time
import random

mqttc = mqtt.Client("py-script")
mqttc.connect("mqtt", 1883, 60)

mqttc.loop_start()
while True:
    mqttc.publish("/casa/living/temp",random.randrange(-5, 35, 3))
    time.sleep(3)# sleep for 10 seconds before next call