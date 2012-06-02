.class public Lcom/android/deskclock/SetAlarm;
.super Landroid/preference/PreferenceActivity;
.source "SetAlarm.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field private mAlarmPref:Lcom/android/deskclock/AlarmPreference;

.field private mEnabledPref:Landroid/preference/CheckBoxPreference;

.field private mHour:I

.field private mId:I

.field private mLabel:Landroid/widget/EditText;

.field private mMinute:I

.field private mOriginalAlarm:Lcom/android/deskclock/Alarm;

.field private mRepeatPref:Lcom/android/deskclock/RepeatPreference;

.field private mTimePickerDialog:Landroid/app/TimePickerDialog;

.field private mTimePref:Landroid/preference/Preference;

.field private mVibratePref:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 179
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/deskclock/SetAlarm;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/SetAlarm;Lcom/android/deskclock/Alarm;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/deskclock/SetAlarm;->saveAlarm(Lcom/android/deskclock/Alarm;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/deskclock/SetAlarm;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mEnabledPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/deskclock/SetAlarm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->revert()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/deskclock/SetAlarm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->deleteAlarm()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/deskclock/SetAlarm;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/deskclock/SetAlarm;->mId:I

    return v0
.end method

.method private buildAlarmFromUi()Lcom/android/deskclock/Alarm;
    .locals 2

    .prologue
    .line 280
    new-instance v0, Lcom/android/deskclock/Alarm;

    invoke-direct {v0}, Lcom/android/deskclock/Alarm;-><init>()V

    .line 281
    .local v0, alarm:Lcom/android/deskclock/Alarm;
    iget v1, p0, Lcom/android/deskclock/SetAlarm;->mId:I

    iput v1, v0, Lcom/android/deskclock/Alarm;->id:I

    .line 282
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/deskclock/Alarm;->enabled:Z

    .line 283
    iget v1, p0, Lcom/android/deskclock/SetAlarm;->mHour:I

    iput v1, v0, Lcom/android/deskclock/Alarm;->hour:I

    .line 284
    iget v1, p0, Lcom/android/deskclock/SetAlarm;->mMinute:I

    iput v1, v0, Lcom/android/deskclock/Alarm;->minutes:I

    .line 285
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mRepeatPref:Lcom/android/deskclock/RepeatPreference;

    invoke-virtual {v1}, Lcom/android/deskclock/RepeatPreference;->getDaysOfWeek()Lcom/android/deskclock/Alarm$DaysOfWeek;

    move-result-object v1

    iput-object v1, v0, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    .line 286
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mVibratePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/deskclock/Alarm;->vibrate:Z

    .line 287
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mLabel:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    .line 288
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mAlarmPref:Lcom/android/deskclock/AlarmPreference;

    invoke-virtual {v1}, Lcom/android/deskclock/AlarmPreference;->getAlert()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    .line 289
    return-object v0
.end method

.method private deleteAlarm()V
    .locals 3

    .prologue
    .line 293
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0006

    invoke-virtual {p0, v1}, Lcom/android/deskclock/SetAlarm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0009

    invoke-virtual {p0, v1}, Lcom/android/deskclock/SetAlarm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/deskclock/SetAlarm$5;

    invoke-direct {v2, p0}, Lcom/android/deskclock/SetAlarm$5;-><init>(Lcom/android/deskclock/SetAlarm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 305
    return-void
.end method

.method static formatToast(Landroid/content/Context;J)Ljava/lang/String;
    .locals 23
    .parameter "context"
    .parameter "timeInMillis"

    .prologue
    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v6, p1, v19

    .line 341
    .local v6, delta:J
    const-wide/32 v19, 0x36ee80

    div-long v13, v6, v19

    .line 342
    .local v13, hours:J
    const-wide/32 v19, 0xea60

    div-long v19, v6, v19

    const-wide/16 v21, 0x3c

    rem-long v17, v19, v21

    .line 343
    .local v17, minutes:J
    const-wide/16 v19, 0x18

    div-long v4, v13, v19

    .line 344
    .local v4, days:J
    const-wide/16 v19, 0x18

    rem-long v13, v13, v19

    .line 346
    const-wide/16 v19, 0x0

    cmp-long v19, v4, v19

    if-nez v19, :cond_0

    const-string v3, ""

    .line 350
    .local v3, daySeq:Ljava/lang/String;
    :goto_0
    const-wide/16 v19, 0x0

    cmp-long v19, v17, v19

    if-nez v19, :cond_2

    const-string v16, ""

    .line 354
    .local v16, minSeq:Ljava/lang/String;
    :goto_1
    const-wide/16 v19, 0x0

    cmp-long v19, v13, v19

    if-nez v19, :cond_4

    const-string v12, ""

    .line 358
    .local v12, hourSeq:Ljava/lang/String;
    :goto_2
    const-wide/16 v19, 0x0

    cmp-long v19, v4, v19

    if-lez v19, :cond_6

    const/4 v8, 0x1

    .line 359
    .local v8, dispDays:Z
    :goto_3
    const-wide/16 v19, 0x0

    cmp-long v19, v13, v19

    if-lez v19, :cond_7

    const/4 v9, 0x1

    .line 360
    .local v9, dispHour:Z
    :goto_4
    const-wide/16 v19, 0x0

    cmp-long v19, v17, v19

    if-lez v19, :cond_8

    const/4 v10, 0x1

    .line 362
    .local v10, dispMinute:Z
    :goto_5
    if-eqz v8, :cond_9

    const/16 v19, 0x1

    move/from16 v20, v19

    :goto_6
    if-eqz v9, :cond_a

    const/16 v19, 0x2

    :goto_7
    or-int v20, v20, v19

    if-eqz v10, :cond_b

    const/16 v19, 0x4

    :goto_8
    or-int v15, v20, v19

    .line 366
    .local v15, index:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const/high16 v20, 0x7f0c

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 367
    .local v11, formats:[Ljava/lang/String;
    aget-object v19, v11, v15

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v3, v20, v21

    const/16 v21, 0x1

    aput-object v12, v20, v21

    const/16 v21, 0x2

    aput-object v16, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    return-object v19

    .line 346
    .end local v3           #daySeq:Ljava/lang/String;
    .end local v8           #dispDays:Z
    .end local v9           #dispHour:Z
    .end local v10           #dispMinute:Z
    .end local v11           #formats:[Ljava/lang/String;
    .end local v12           #hourSeq:Ljava/lang/String;
    .end local v15           #index:I
    .end local v16           #minSeq:Ljava/lang/String;
    :cond_0
    const-wide/16 v19, 0x1

    cmp-long v19, v4, v19

    if-nez v19, :cond_1

    const v19, 0x7f0b0017

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const v19, 0x7f0b0018

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 350
    .restart local v3       #daySeq:Ljava/lang/String;
    :cond_2
    const-wide/16 v19, 0x1

    cmp-long v19, v17, v19

    if-nez v19, :cond_3

    const v19, 0x7f0b001b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    :cond_3
    const v19, 0x7f0b001c

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .line 354
    .restart local v16       #minSeq:Ljava/lang/String;
    :cond_4
    const-wide/16 v19, 0x1

    cmp-long v19, v13, v19

    if-nez v19, :cond_5

    const v19, 0x7f0b0019

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    :cond_5
    const v19, 0x7f0b001a

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    .line 358
    .restart local v12       #hourSeq:Ljava/lang/String;
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 359
    .restart local v8       #dispDays:Z
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 360
    .restart local v9       #dispHour:Z
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 362
    .restart local v10       #dispMinute:Z
    :cond_9
    const/16 v19, 0x0

    move/from16 v20, v19

    goto/16 :goto_6

    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_7

    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_8
.end method

.method static popAlarmSetToast(Landroid/content/Context;IILcom/android/deskclock/Alarm$DaysOfWeek;)V
    .locals 2
    .parameter "context"
    .parameter "hour"
    .parameter "minute"
    .parameter "daysOfWeek"

    .prologue
    .line 323
    invoke-static {p1, p2, p3}, Lcom/android/deskclock/Alarms;->calculateAlarm(IILcom/android/deskclock/Alarm$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/deskclock/SetAlarm;->popAlarmSetToast(Landroid/content/Context;J)V

    .line 326
    return-void
.end method

.method static popAlarmSetToast(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "timeInMillis"

    .prologue
    .line 329
    invoke-static {p0, p1, p2}, Lcom/android/deskclock/SetAlarm;->formatToast(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, toastText:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 331
    .local v0, toast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/deskclock/ToastMaster;->setToast(Landroid/widget/Toast;)V

    .line 332
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 333
    return-void
.end method

.method private revert()V
    .locals 3

    .prologue
    .line 308
    iget v0, p0, Lcom/android/deskclock/SetAlarm;->mId:I

    .line 310
    .local v0, newId:I
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    iget v1, v1, Lcom/android/deskclock/Alarm;->id:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 311
    invoke-static {p0, v0}, Lcom/android/deskclock/Alarms;->deleteAlarm(Landroid/content/Context;I)V

    .line 315
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    invoke-direct {p0, v1}, Lcom/android/deskclock/SetAlarm;->saveAlarm(Lcom/android/deskclock/Alarm;)J

    goto :goto_0
.end method

.method private saveAlarm(Lcom/android/deskclock/Alarm;)J
    .locals 4
    .parameter "alarm"

    .prologue
    .line 263
    if-nez p1, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->buildAlarmFromUi()Lcom/android/deskclock/Alarm;

    move-result-object p1

    .line 268
    :cond_0
    iget v2, p1, Lcom/android/deskclock/Alarm;->id:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 269
    invoke-static {p0, p1}, Lcom/android/deskclock/Alarms;->addAlarm(Landroid/content/Context;Lcom/android/deskclock/Alarm;)J

    move-result-wide v0

    .line 272
    .local v0, time:J
    iget v2, p1, Lcom/android/deskclock/Alarm;->id:I

    iput v2, p0, Lcom/android/deskclock/SetAlarm;->mId:I

    .line 276
    :goto_0
    return-wide v0

    .line 274
    .end local v0           #time:J
    :cond_1
    invoke-static {p0, p1}, Lcom/android/deskclock/Alarms;->setAlarm(Landroid/content/Context;Lcom/android/deskclock/Alarm;)J

    move-result-wide v0

    .restart local v0       #time:J
    goto :goto_0
.end method

.method private showTimePicker()V
    .locals 6

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    const-string v0, "mTimePickerDialog is already showing."

    invoke-static {v0}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->dismiss()V

    .line 233
    :goto_0
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->dismiss()V

    .line 236
    :cond_0
    new-instance v0, Landroid/app/TimePickerDialog;

    iget v3, p0, Lcom/android/deskclock/SetAlarm;->mHour:I

    iget v4, p0, Lcom/android/deskclock/SetAlarm;->mMinute:I

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v0, p0, Lcom/android/deskclock/SetAlarm;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    .line 238
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v0, p0}, Landroid/app/TimePickerDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 239
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 240
    return-void

    .line 231
    :cond_1
    const-string v0, "mTimePickerDialog is not null"

    invoke-static {v0}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePrefs(Lcom/android/deskclock/Alarm;)V
    .locals 2
    .parameter "alarm"

    .prologue
    .line 197
    iget v0, p1, Lcom/android/deskclock/Alarm;->id:I

    iput v0, p0, Lcom/android/deskclock/SetAlarm;->mId:I

    .line 198
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mEnabledPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p1, Lcom/android/deskclock/Alarm;->enabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 199
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mLabel:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget v0, p1, Lcom/android/deskclock/Alarm;->hour:I

    iput v0, p0, Lcom/android/deskclock/SetAlarm;->mHour:I

    .line 201
    iget v0, p1, Lcom/android/deskclock/Alarm;->minutes:I

    iput v0, p0, Lcom/android/deskclock/SetAlarm;->mMinute:I

    .line 202
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mRepeatPref:Lcom/android/deskclock/RepeatPreference;

    iget-object v1, p1, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/RepeatPreference;->setDaysOfWeek(Lcom/android/deskclock/Alarm$DaysOfWeek;)V

    .line 203
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mVibratePref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p1, Lcom/android/deskclock/Alarm;->vibrate:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 205
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mAlarmPref:Lcom/android/deskclock/AlarmPreference;

    iget-object v1, p1, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/AlarmPreference;->setAlert(Landroid/net/Uri;)V

    .line 206
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->updateTime()V

    .line 207
    return-void
.end method

.method private updateTime()V
    .locals 4

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mTimePref:Landroid/preference/Preference;

    iget v1, p0, Lcom/android/deskclock/SetAlarm;->mHour:I

    iget v2, p0, Lcom/android/deskclock/SetAlarm;->mMinute:I

    iget-object v3, p0, Lcom/android/deskclock/SetAlarm;->mRepeatPref:Lcom/android/deskclock/RepeatPreference;

    invoke-virtual {v3}, Lcom/android/deskclock/RepeatPreference;->getDaysOfWeek()Lcom/android/deskclock/Alarm$DaysOfWeek;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/android/deskclock/Alarms;->formatTime(Landroid/content/Context;IILcom/android/deskclock/Alarm$DaysOfWeek;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 260
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->revert()V

    .line 222
    invoke-virtual {p0}, Lcom/android/deskclock/SetAlarm;->finish()V

    .line 223
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/deskclock/SetAlarm;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    .line 255
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v10, 0x0

    .line 64
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v7, 0x7f04000d

    invoke-virtual {p0, v7}, Lcom/android/deskclock/SetAlarm;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/deskclock/SetAlarm;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040003

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 70
    .local v3, label:Landroid/widget/EditText;
    const v7, 0x102000a

    invoke-virtual {p0, v7}, Lcom/android/deskclock/SetAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 71
    .local v4, list:Landroid/widget/ListView;
    invoke-virtual {v4, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 75
    const/high16 v7, 0x7f06

    invoke-virtual {p0, v7}, Lcom/android/deskclock/SetAlarm;->addPreferencesFromResource(I)V

    .line 78
    iput-object v3, p0, Lcom/android/deskclock/SetAlarm;->mLabel:Landroid/widget/EditText;

    .line 79
    const-string v7, "enabled"

    invoke-virtual {p0, v7}, Lcom/android/deskclock/SetAlarm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/deskclock/SetAlarm;->mEnabledPref:Landroid/preference/CheckBoxPreference;

    .line 80
    iget-object v7, p0, Lcom/android/deskclock/SetAlarm;->mEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 81
    const-string v7, "time"

    invoke-virtual {p0, v7}, Lcom/android/deskclock/SetAlarm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/deskclock/SetAlarm;->mTimePref:Landroid/preference/Preference;

    .line 82
    const-string v7, "alarm"

    invoke-virtual {p0, v7}, Lcom/android/deskclock/SetAlarm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/deskclock/AlarmPreference;

    iput-object v7, p0, Lcom/android/deskclock/SetAlarm;->mAlarmPref:Lcom/android/deskclock/AlarmPreference;

    .line 83
    iget-object v7, p0, Lcom/android/deskclock/SetAlarm;->mAlarmPref:Lcom/android/deskclock/AlarmPreference;

    invoke-virtual {v7, p0}, Lcom/android/deskclock/AlarmPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    const-string v7, "vibrate"

    invoke-virtual {p0, v7}, Lcom/android/deskclock/SetAlarm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/deskclock/SetAlarm;->mVibratePref:Landroid/preference/CheckBoxPreference;

    .line 85
    iget-object v7, p0, Lcom/android/deskclock/SetAlarm;->mVibratePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 86
    const-string v7, "vibrator"

    invoke-virtual {p0, v7}, Lcom/android/deskclock/SetAlarm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    .line 87
    .local v6, v:Landroid/os/Vibrator;
    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v7

    if-nez v7, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/deskclock/SetAlarm;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/deskclock/SetAlarm;->mVibratePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 90
    :cond_0
    const-string v7, "setRepeat"

    invoke-virtual {p0, v7}, Lcom/android/deskclock/SetAlarm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/deskclock/RepeatPreference;

    iput-object v7, p0, Lcom/android/deskclock/SetAlarm;->mRepeatPref:Lcom/android/deskclock/RepeatPreference;

    .line 91
    iget-object v7, p0, Lcom/android/deskclock/SetAlarm;->mRepeatPref:Lcom/android/deskclock/RepeatPreference;

    invoke-virtual {v7, p0}, Lcom/android/deskclock/RepeatPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/deskclock/SetAlarm;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 94
    .local v2, i:Landroid/content/Intent;
    const-string v7, "intent.extra.alarm"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/Alarm;

    .line 96
    .local v0, alarm:Lcom/android/deskclock/Alarm;
    if-nez v0, :cond_1

    .line 98
    new-instance v0, Lcom/android/deskclock/Alarm;

    .end local v0           #alarm:Lcom/android/deskclock/Alarm;
    invoke-direct {v0}, Lcom/android/deskclock/Alarm;-><init>()V

    .line 100
    .restart local v0       #alarm:Lcom/android/deskclock/Alarm;
    :cond_1
    iput-object v0, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    .line 104
    iget-object v7, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    invoke-direct {p0, v7}, Lcom/android/deskclock/SetAlarm;->updatePrefs(Lcom/android/deskclock/Alarm;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/deskclock/SetAlarm;->getListView()Landroid/widget/ListView;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 111
    const v7, 0x7f0f0028

    invoke-virtual {p0, v7}, Lcom/android/deskclock/SetAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 112
    .local v1, b:Landroid/widget/Button;
    new-instance v7, Lcom/android/deskclock/SetAlarm$1;

    invoke-direct {v7, p0}, Lcom/android/deskclock/SetAlarm$1;-><init>(Lcom/android/deskclock/SetAlarm;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v7, 0x7f0f0026

    invoke-virtual {p0, v7}, Lcom/android/deskclock/SetAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 122
    .local v5, revert:Landroid/widget/Button;
    new-instance v7, Lcom/android/deskclock/SetAlarm$2;

    invoke-direct {v7, p0}, Lcom/android/deskclock/SetAlarm$2;-><init>(Lcom/android/deskclock/SetAlarm;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v7, 0x7f0f0027

    invoke-virtual {p0, v7}, Lcom/android/deskclock/SetAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #b:Landroid/widget/Button;
    check-cast v1, Landroid/widget/Button;

    .line 129
    .restart local v1       #b:Landroid/widget/Button;
    iget v7, p0, Lcom/android/deskclock/SetAlarm;->mId:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 130
    invoke-virtual {v1, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 131
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 140
    :goto_0
    return-void

    .line 133
    :cond_2
    invoke-virtual {v1, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 134
    new-instance v7, Lcom/android/deskclock/SetAlarm$3;

    invoke-direct {v7, p0}, Lcom/android/deskclock/SetAlarm$3;-><init>(Lcom/android/deskclock/SetAlarm;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "p"
    .parameter "newValue"

    .prologue
    .line 184
    sget-object v0, Lcom/android/deskclock/SetAlarm;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/deskclock/SetAlarm$4;

    invoke-direct {v1, p0, p1}, Lcom/android/deskclock/SetAlarm$4;-><init>(Lcom/android/deskclock/SetAlarm;Landroid/preference/Preference;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mTimePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->showTimePicker()V

    .line 216
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 161
    const-string v2, "originalAlarm"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/Alarm;

    .line 162
    .local v0, alarmFromBundle:Lcom/android/deskclock/Alarm;
    if-eqz v0, :cond_0

    .line 163
    iput-object v0, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    .line 166
    :cond_0
    const-string v2, "currentAlarm"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0           #alarmFromBundle:Lcom/android/deskclock/Alarm;
    check-cast v0, Lcom/android/deskclock/Alarm;

    .line 167
    .restart local v0       #alarmFromBundle:Lcom/android/deskclock/Alarm;
    if-eqz v0, :cond_1

    .line 168
    invoke-direct {p0, v0}, Lcom/android/deskclock/SetAlarm;->updatePrefs(Lcom/android/deskclock/Alarm;)V

    .line 171
    :cond_1
    const-string v2, "timePickerBundle"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 172
    .local v1, b:Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 173
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->showTimePicker()V

    .line 174
    iget-object v2, p0, Lcom/android/deskclock/SetAlarm;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v2, v1}, Landroid/app/TimePickerDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 176
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 145
    const-string v0, "originalAlarm"

    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 146
    const-string v0, "currentAlarm"

    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->buildAlarmFromUi()Lcom/android/deskclock/Alarm;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 147
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "timePickerBundle"

    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v1}, Landroid/app/TimePickerDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 151
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->dismiss()V

    .line 153
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/deskclock/SetAlarm;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    .line 155
    :cond_1
    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 2
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/deskclock/SetAlarm;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    .line 245
    iput p2, p0, Lcom/android/deskclock/SetAlarm;->mHour:I

    .line 246
    iput p3, p0, Lcom/android/deskclock/SetAlarm;->mMinute:I

    .line 247
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->updateTime()V

    .line 249
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mEnabledPref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 250
    return-void
.end method
