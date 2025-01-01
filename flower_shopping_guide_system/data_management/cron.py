# myapp/cron.py

from django_cron import CronJobBase, Schedule

from data_management.spiders.crawl import get_flower_data


class MyCrawlerCronJob(CronJobBase):
    RUN_EVERY_MINS = 1440  # 每 60 分钟运行一次

    schedule = Schedule(run_every_mins=RUN_EVERY_MINS)
    code = 'data_management.my_crawler_cron_job'

    def do(self):
        get_flower_data()
