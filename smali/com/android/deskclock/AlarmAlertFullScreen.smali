.class public Lcom/android/deskclock/AlarmAlertFullScreen;
.super Landroid/app/Activity;
.source "AlarmAlertFullScreen.java"


# instance fields
.field protected mAlarm:Lcom/android/deskclock/Alarm;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumeBehavior:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    new-instance v0, Lcom/android/deskclock/AlarmAlertFullScreen$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/AlarmAlertFullScreen$1;-><init>(Lcom/android/deskclock/AlarmAlertFullScreen;)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/AlarmAlertFullScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->snooze()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/deskclock/AlarmAlertFullScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmAlertFullScreen;->dismiss(Z)V

    return-void
.end method

.method private dismiss(Z)V
    .locals 3
    .parameter "killed"

    .prologue
    .line 203
    if-eqz p1, :cond_1

    const-string v1, "Alarm killed"

    :goto_0
    invoke-static {v1}, Lcom/android/deskclock/Log;->i(Ljava/lang/String;)V

    .line 206
    if-nez p1, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    .line 209
    .local v0, nm:Landroid/app/NotificationManager;
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    iget v1, v1, Lcom/android/deskclock/Alarm;->id:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 210
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.deskclock.ALARM_ALERT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/deskclock/AlarmAlertFullScreen;->stopService(Landroid/content/Intent;)Z

    .line 212
    .end local v0           #nm:Landroid/app/NotificationManager;
    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->finish()V

    .line 213
    return-void

    .line 203
    :cond_1
    const-string v1, "Alarm dismissed by user"

    goto :goto_0
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 198
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method private setTitle()V
    .locals 2

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    invoke-virtual {v1, p0}, Lcom/android/deskclock/Alarm;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, titleText:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmAlertFullScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method

.method private snooze()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 147
    const v0, 0x7f0f0003

    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmAlertFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-direct {p0, v9}, Lcom/android/deskclock/AlarmAlertFullScreen;->dismiss(Z)V

    .line 195
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "snooze_duration"

    const-string v2, "10"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const v3, 0xea60

    mul-int/2addr v3, v0

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 158
    iget-object v3, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    iget v3, v3, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p0, v3, v1, v2}, Lcom/android/deskclock/Alarms;->saveSnoozeAlert(Landroid/content/Context;IJ)V

    .line 162
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 163
    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 166
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    invoke-virtual {v1, p0}, Lcom/android/deskclock/Alarm;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 167
    const v2, 0x7f0b0030

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v1, v4, v9

    invoke-virtual {p0, v2, v4}, Lcom/android/deskclock/AlarmAlertFullScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 170
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/deskclock/AlarmReceiver;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    const-string v4, "cancel_snooze"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v4, "intent.extra.alarm"

    iget-object v5, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 173
    iget-object v4, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    iget v4, v4, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p0, v4, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 175
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v4

    .line 176
    new-instance v5, Landroid/app/Notification;

    const v6, 0x7f020037

    const-wide/16 v7, 0x0

    invoke-direct {v5, v6, v1, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 178
    const v6, 0x7f0b0031

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {p0, v3}, Lcom/android/deskclock/Alarms;->formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/android/deskclock/AlarmAlertFullScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, p0, v1, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 181
    iget v1, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x12

    iput v1, v5, Landroid/app/Notification;->flags:I

    .line 183
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    iget v1, v1, Lcom/android/deskclock/Alarm;->id:I

    invoke-virtual {v4, v1, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 185
    const v1, 0x7f0b0016

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v9

    invoke-virtual {p0, v1, v2}, Lcom/android/deskclock/AlarmAlertFullScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 191
    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.deskclock.ALARM_ALERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmAlertFullScreen;->stopService(Landroid/content/Intent;)Z

    .line 194
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->finish()V

    goto/16 :goto_0
.end method

.method private updateLayout()V
    .locals 4

    .prologue
    .line 118
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 120
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getLayoutResId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/deskclock/AlarmAlertFullScreen;->setContentView(Landroid/view/View;)V

    .line 124
    const v2, 0x7f0f0003

    invoke-virtual {p0, v2}, Lcom/android/deskclock/AlarmAlertFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 125
    .local v1, snooze:Landroid/widget/Button;
    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    .line 126
    new-instance v2, Lcom/android/deskclock/AlarmAlertFullScreen$2;

    invoke-direct {v2, p0}, Lcom/android/deskclock/AlarmAlertFullScreen$2;-><init>(Lcom/android/deskclock/AlarmAlertFullScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v2, 0x7f0f0005

    invoke-virtual {p0, v2}, Lcom/android/deskclock/AlarmAlertFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/deskclock/AlarmAlertFullScreen$3;

    invoke-direct {v3, p0}, Lcom/android/deskclock/AlarmAlertFullScreen$3;-><init>(Lcom/android/deskclock/AlarmAlertFullScreen;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->setTitle()V

    .line 142
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 251
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 252
    .local v0, up:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 277
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_1
    return v1

    .end local v0           #up:Z
    :cond_1
    move v0, v2

    .line 251
    goto :goto_0

    .line 259
    .restart local v0       #up:Z
    :sswitch_0
    if-eqz v0, :cond_0

    .line 260
    iget v3, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVolumeBehavior:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 262
    :pswitch_0
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->snooze()V

    goto :goto_1

    .line 266
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/deskclock/AlarmAlertFullScreen;->dismiss(Z)V

    goto :goto_1

    .line 252
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x50 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 114
    const v0, 0x7f040001

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "intent.extra.alarm"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/deskclock/Alarm;

    iput-object v3, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    .line 82
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "volume_button_setting"

    const-string v5, "2"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, vol:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVolumeBehavior:I

    .line 88
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 89
    .local v2, win:Landroid/view/Window;
    const/high16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 92
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "screen_off"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    const v3, 0x200081

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->updateLayout()V

    .line 101
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "alarm_killed"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "com.android.deskclock.ALARM_SNOOZE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v3, "com.android.deskclock.ALARM_DISMISS"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    iget-object v3, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/deskclock/AlarmAlertFullScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 242
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 245
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmAlertFullScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 246
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 221
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 225
    const-string v0, "intent.extra.alarm"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/Alarm;

    iput-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    .line 227
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->setTitle()V

    .line 228
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 232
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 234
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    iget v2, v2, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {v1, v2}, Lcom/android/deskclock/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcom/android/deskclock/Alarm;

    move-result-object v1

    if-nez v1, :cond_0

    .line 235
    const v1, 0x7f0f0003

    invoke-virtual {p0, v1}, Lcom/android/deskclock/AlarmAlertFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 236
    .local v0, snooze:Landroid/widget/Button;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 238
    .end local v0           #snooze:Landroid/widget/Button;
    :cond_0
    return-void
.end method
