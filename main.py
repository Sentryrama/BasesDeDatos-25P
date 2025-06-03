import random
from faker import Faker
from datetime import datetime
fake = Faker('es_MX')

for _ in range(40):
    print(f'''
        (          
        "{fake.first_name()}",
        "{fake.last_name()}",
        "{fake.date_between_dates(datetime(1980,1,1), datetime(2004,12,31))}",
        "{fake.passport_gender()}",
        "55123456{random.randrange(15,99)}",
        "{fake.address()}"
        ),'''
        )