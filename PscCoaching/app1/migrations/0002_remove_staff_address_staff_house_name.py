# Generated by Django 4.0.4 on 2022-06-29 08:43

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app1', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='staff',
            name='address',
        ),
        migrations.AddField(
            model_name='staff',
            name='house_name',
            field=models.CharField(default='t', max_length=50),
            preserve_default=False,
        ),
    ]
