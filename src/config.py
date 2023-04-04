from decouple import config

class Config:
    SECRET_KEY = config('SECRET_KEY')

class DevelopmentConfig(Config):
    DEBUG = False
    DB_SERVER = '150.136.169.25'

class ProductionConfig(Config):
    DB_SERVER = '150.136.169.25'

config = {
    'development': DevelopmentConfig
}
