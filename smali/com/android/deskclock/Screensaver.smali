.class public Lcom/android/deskclock/Screensaver;
.super Landroid/app/Activity;
.source "Screensaver.java"


# static fields
.field static CLOCK_COLOR:I

.field private static mSlowStartWithBrakes:Landroid/animation/TimeInterpolator;


# instance fields
.field private mContentView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private final mMoveSaverRunnable:Ljava/lang/Runnable;

.field private mPlugged:Z

.field private final mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSaverView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const v0, -0x995501

    sput v0, Lcom/android/deskclock/Screensaver;->CLOCK_COLOR:I

    .line 55
    new-instance v0, Lcom/android/deskclock/Screensaver$1;

    invoke-direct {v0}, Lcom/android/deskclock/Screensaver$1;-><init>()V

    sput-object v0, Lcom/android/deskclock/Screensaver;->mSlowStartWithBrakes:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/Screensaver;->mHandler:Landroid/os/Handler;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/Screensaver;->mPlugged:Z

    .line 65
    new-instance v0, Lcom/android/deskclock/Screensaver$2;

    invoke-direct {v0, p0}, Lcom/android/deskclock/Screensaver$2;-><init>(Lcom/android/deskclock/Screensaver;)V

    iput-object v0, p0, Lcom/android/deskclock/Screensaver;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    new-instance v0, Lcom/android/deskclock/Screensaver$3;

    invoke-direct {v0, p0}, Lcom/android/deskclock/Screensaver$3;-><init>(Lcom/android/deskclock/Screensaver;)V

    iput-object v0, p0, Lcom/android/deskclock/Screensaver;->mMoveSaverRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/Screensaver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/deskclock/Screensaver;->mPlugged:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/deskclock/Screensaver;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/deskclock/Screensaver;->mPlugged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/deskclock/Screensaver;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/deskclock/Screensaver;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mSaverView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/deskclock/Screensaver;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/deskclock/Screensaver;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 197
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mSaverView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 198
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 216
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/deskclock/Screensaver;->mMoveSaverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 217
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 210
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/deskclock/Screensaver;->mMoveSaverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 211
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 173
    invoke-virtual {p0}, Lcom/android/deskclock/Screensaver;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sput v3, Lcom/android/deskclock/Screensaver;->CLOCK_COLOR:I

    .line 174
    const v3, 0x7f04000a

    invoke-virtual {p0, v3}, Lcom/android/deskclock/Screensaver;->setContentView(I)V

    .line 175
    const v3, 0x7f0f001b

    invoke-virtual {p0, v3}, Lcom/android/deskclock/Screensaver;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/deskclock/Screensaver;->mSaverView:Landroid/view/View;

    .line 176
    iget-object v3, p0, Lcom/android/deskclock/Screensaver;->mSaverView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iput-object v3, p0, Lcom/android/deskclock/Screensaver;->mContentView:Landroid/view/View;

    .line 177
    iget-object v3, p0, Lcom/android/deskclock/Screensaver;->mSaverView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 179
    const v3, 0x7f0f0001

    invoke-virtual {p0, v3}, Lcom/android/deskclock/Screensaver;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/AndroidClockTextView;

    .line 180
    .local v2, timeDisplay:Lcom/android/deskclock/AndroidClockTextView;
    if-eqz v2, :cond_0

    .line 181
    sget v3, Lcom/android/deskclock/Screensaver;->CLOCK_COLOR:I

    invoke-virtual {v2, v3}, Lcom/android/deskclock/AndroidClockTextView;->setTextColor(I)V

    .line 182
    const v3, 0x7f0f0002

    invoke-virtual {p0, v3}, Lcom/android/deskclock/Screensaver;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/AndroidClockTextView;

    .line 183
    .local v0, amPm:Lcom/android/deskclock/AndroidClockTextView;
    if-eqz v0, :cond_0

    sget v3, Lcom/android/deskclock/Screensaver;->CLOCK_COLOR:I

    invoke-virtual {v0, v3}, Lcom/android/deskclock/AndroidClockTextView;->setTextColor(I)V

    .line 186
    .end local v0           #amPm:Lcom/android/deskclock/AndroidClockTextView;
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 187
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    iget-object v3, p0, Lcom/android/deskclock/Screensaver;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/deskclock/Screensaver;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 189
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/deskclock/Screensaver;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 204
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 205
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/deskclock/Screensaver;->finish()V

    .line 222
    return-void
.end method
