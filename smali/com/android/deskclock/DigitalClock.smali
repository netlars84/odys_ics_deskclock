.class public Lcom/android/deskclock/DigitalClock;
.super Landroid/widget/RelativeLayout;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/DigitalClock$FormatChangeObserver;,
        Lcom/android/deskclock/DigitalClock$AmPm;
    }
.end annotation


# instance fields
.field private mAmPm:Lcom/android/deskclock/DigitalClock$AmPm;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLive:Z

.field private mTimeDisplay:Lcom/android/deskclock/AndroidClockTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/DigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/DigitalClock;->mLive:Z

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/DigitalClock;->mHandler:Landroid/os/Handler;

    .line 51
    new-instance v0, Lcom/android/deskclock/DigitalClock$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/DigitalClock$1;-><init>(Lcom/android/deskclock/DigitalClock;)V

    iput-object v0, p0, Lcom/android/deskclock/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/DigitalClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/deskclock/DigitalClock;->mLive:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/deskclock/DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/deskclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/deskclock/DigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/deskclock/DigitalClock;->updateTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/deskclock/DigitalClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/deskclock/DigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/deskclock/DigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/deskclock/DigitalClock;->setDateFormat()V

    return-void
.end method

.method private setDateFormat()V
    .locals 3

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/android/deskclock/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kk:mm"

    :goto_0
    iput-object v0, p0, Lcom/android/deskclock/DigitalClock;->mFormat:Ljava/lang/String;

    .line 176
    iget-object v1, p0, Lcom/android/deskclock/DigitalClock;->mAmPm:Lcom/android/deskclock/DigitalClock$AmPm;

    iget-object v0, p0, Lcom/android/deskclock/DigitalClock;->mFormat:Ljava/lang/String;

    const-string v2, "h:mm"

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/deskclock/DigitalClock$AmPm;->setShowAmPm(Z)V

    .line 177
    return-void

    .line 175
    :cond_0
    const-string v0, "h:mm"

    goto :goto_0

    .line 176
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateTime()V
    .locals 4

    .prologue
    .line 165
    iget-boolean v1, p0, Lcom/android/deskclock/DigitalClock;->mLive:Z

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/deskclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/DigitalClock;->mFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/deskclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 170
    .local v0, newTime:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/deskclock/DigitalClock;->mTimeDisplay:Lcom/android/deskclock/AndroidClockTextView;

    invoke-virtual {v1, v0}, Lcom/android/deskclock/AndroidClockTextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v2, p0, Lcom/android/deskclock/DigitalClock;->mAmPm:Lcom/android/deskclock/DigitalClock$AmPm;

    iget-object v1, p0, Lcom/android/deskclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/deskclock/DigitalClock$AmPm;->setIsMorning(Z)V

    .line 172
    return-void

    .line 171
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 120
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 124
    iget-boolean v1, p0, Lcom/android/deskclock/DigitalClock;->mAttached:Z

    if-eqz v1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 125
    :cond_0
    iput-boolean v4, p0, Lcom/android/deskclock/DigitalClock;->mAttached:Z

    .line 127
    iget-boolean v1, p0, Lcom/android/deskclock/DigitalClock;->mLive:Z

    if-eqz v1, :cond_1

    .line 129
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 130
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/deskclock/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    new-instance v1, Lcom/android/deskclock/DigitalClock$FormatChangeObserver;

    invoke-direct {v1, p0}, Lcom/android/deskclock/DigitalClock$FormatChangeObserver;-><init>(Lcom/android/deskclock/DigitalClock;)V

    iput-object v1, p0, Lcom/android/deskclock/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 138
    invoke-virtual {p0}, Lcom/android/deskclock/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/deskclock/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 141
    invoke-direct {p0}, Lcom/android/deskclock/DigitalClock;->updateTime()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 148
    iget-boolean v0, p0, Lcom/android/deskclock/DigitalClock;->mAttached:Z

    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/DigitalClock;->mAttached:Z

    .line 151
    iget-boolean v0, p0, Lcom/android/deskclock/DigitalClock;->mLive:Z

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/android/deskclock/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/android/deskclock/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 111
    const v0, 0x7f0f0001

    invoke-virtual {p0, v0}, Lcom/android/deskclock/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/AndroidClockTextView;

    iput-object v0, p0, Lcom/android/deskclock/DigitalClock;->mTimeDisplay:Lcom/android/deskclock/AndroidClockTextView;

    .line 112
    new-instance v0, Lcom/android/deskclock/DigitalClock$AmPm;

    invoke-direct {v0, p0}, Lcom/android/deskclock/DigitalClock$AmPm;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/deskclock/DigitalClock;->mAmPm:Lcom/android/deskclock/DigitalClock$AmPm;

    .line 113
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 115
    invoke-direct {p0}, Lcom/android/deskclock/DigitalClock;->setDateFormat()V

    .line 116
    return-void
.end method

.method setLive(Z)V
    .locals 0
    .parameter "live"

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/android/deskclock/DigitalClock;->mLive:Z

    .line 181
    return-void
.end method

.method updateTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/deskclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 161
    invoke-direct {p0}, Lcom/android/deskclock/DigitalClock;->updateTime()V

    .line 162
    return-void
.end method
