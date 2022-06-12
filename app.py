from flask import Flask, redirect, url_for, request, abort
from views.index import index_blueprint
from news.index import news_blueprint
from institution.index import institution_blueprint
from flaskext.mysql import MySQL
# from config import db_conf
# import config
from flask_cors import CORS

application = Flask(__name__)
CORS(application)

mysql = MySQL()

application.config['SECRET_KEY'] = 'secret-key'

application.config['MYSQL_DATABASE_USER'] = 'root'
application.config['MYSQL_DATABASE_PASSWORD'] = '123456'
application.config['MYSQL_DATABASE_DB'] = 'roytuts'
application.config['MYSQL_DATABASE_HOST'] = 'localhost'
mysql.init_app(application)

application.register_blueprint(index_blueprint)
application.register_blueprint(news_blueprint)
application.register_blueprint(institution_blueprint)
