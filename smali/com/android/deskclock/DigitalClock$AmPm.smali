.class Lcom/android/deskclock/DigitalClock$AmPm;
.super Ljava/lang/Object;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmPm"
.end annotation


# instance fields
.field private mAmPm:Lcom/android/deskclock/AndroidClockTextView;

.field private mAmString:Ljava/lang/String;

.field private mPmString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2
    .parameter "parent"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const v1, 0x7f0f0002

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/AndroidClockTextView;

    iput-object v1, p0, Lcom/android/deskclock/DigitalClock$AmPm;->mAmPm:Lcom/android/deskclock/AndroidClockTextView;

    .line 74
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, ampm:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/deskclock/DigitalClock$AmPm;->mAmString:Ljava/lang/String;

    .line 76
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/deskclock/DigitalClock$AmPm;->mPmString:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method setIsMorning(Z)V
    .locals 2
    .parameter "isMorning"

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/deskclock/DigitalClock$AmPm;->mAmPm:Lcom/android/deskclock/AndroidClockTextView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/DigitalClock$AmPm;->mAmString:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/deskclock/AndroidClockTextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/DigitalClock$AmPm;->mPmString:Ljava/lang/String;

    goto :goto_0
.end method

.method setShowAmPm(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 80
    iget-object v1, p0, Lcom/android/deskclock/DigitalClock$AmPm;->mAmPm:Lcom/android/deskclock/AndroidClockTextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/deskclock/AndroidClockTextView;->setVisibility(I)V

    .line 81
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
