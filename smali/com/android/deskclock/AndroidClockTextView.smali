.class public Lcom/android/deskclock/AndroidClockTextView;
.super Landroid/widget/TextView;
.source "AndroidClockTextView.java"


# static fields
.field private static sClockTypeface:Landroid/graphics/Typeface;

.field private static sStandardTypeface:Landroid/graphics/Typeface;


# instance fields
.field private mUseClockTypeface:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v2, 0x0

    const-string v3, "useClockTypeface"

    invoke-interface {p2, v2, v3, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/deskclock/AndroidClockTextView;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/deskclock/AndroidClockTextView;->mUseClockTypeface:Z

    .line 50
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object v1, Lcom/android/deskclock/AndroidClockTextView;->sStandardTypeface:Landroid/graphics/Typeface;

    .line 51
    sget-object v1, Lcom/android/deskclock/AndroidClockTextView;->sClockTypeface:Landroid/graphics/Typeface;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/deskclock/AndroidClockTextView;->mUseClockTypeface:Z

    if-eqz v1, :cond_0

    .line 52
    const-string v1, "/system/fonts/AndroidClock.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    sput-object v1, Lcom/android/deskclock/AndroidClockTextView;->sClockTypeface:Landroid/graphics/Typeface;

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/AndroidClockTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 56
    .local v0, paint:Landroid/graphics/Paint;
    iget-boolean v1, p0, Lcom/android/deskclock/AndroidClockTextView;->mUseClockTypeface:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/deskclock/AndroidClockTextView;->sClockTypeface:Landroid/graphics/Typeface;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 57
    return-void

    .line 47
    .end local v0           #paint:Landroid/graphics/Paint;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 56
    .restart local v0       #paint:Landroid/graphics/Paint;
    :cond_2
    sget-object v1, Lcom/android/deskclock/AndroidClockTextView;->sStandardTypeface:Landroid/graphics/Typeface;

    goto :goto_1
.end method
