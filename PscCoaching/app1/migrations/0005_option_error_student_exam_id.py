# Generated by Django 4.0.4 on 2022-07-19 06:19

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('app1', '0004_option_error_date'),
    ]

    operations = [
        migrations.AddField(
            model_name='option_error',
            name='student_exam_id',
            field=models.ForeignKey(default='ch', on_delete=django.db.models.deletion.CASCADE, to='app1.exam_registration'),
            preserve_default=False,
        ),
    ]