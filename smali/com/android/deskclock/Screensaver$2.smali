.class Lcom/android/deskclock/Screensaver$2;
.super Landroid/content/BroadcastReceiver;
.source "Screensaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/Screensaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/Screensaver;


# direct methods
.method constructor <init>(Lcom/android/deskclock/Screensaver;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/deskclock/Screensaver$2;->this$0:Lcom/android/deskclock/Screensaver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v3, 0x80

    const/4 v1, 0x0

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    const-string v2, "plugged"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 72
    .local v1, plugged:Z
    :cond_0
    iget-object v2, p0, Lcom/android/deskclock/Screensaver$2;->this$0:Lcom/android/deskclock/Screensaver;

    #getter for: Lcom/android/deskclock/Screensaver;->mPlugged:Z
    invoke-static {v2}, Lcom/android/deskclock/Screensaver;->access$000(Lcom/android/deskclock/Screensaver;)Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 74
    iget-object v2, p0, Lcom/android/deskclock/Screensaver$2;->this$0:Lcom/android/deskclock/Screensaver;

    #setter for: Lcom/android/deskclock/Screensaver;->mPlugged:Z
    invoke-static {v2, v1}, Lcom/android/deskclock/Screensaver;->access$002(Lcom/android/deskclock/Screensaver;Z)Z

    .line 75
    iget-object v2, p0, Lcom/android/deskclock/Screensaver$2;->this$0:Lcom/android/deskclock/Screensaver;

    #getter for: Lcom/android/deskclock/Screensaver;->mPlugged:Z
    invoke-static {v2}, Lcom/android/deskclock/Screensaver;->access$000(Lcom/android/deskclock/Screensaver;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    iget-object v2, p0, Lcom/android/deskclock/Screensaver$2;->this$0:Lcom/android/deskclock/Screensaver;

    invoke-virtual {v2}, Lcom/android/deskclock/Screensaver;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 82
    .end local v1           #plugged:Z
    :cond_1
    :goto_0
    return-void

    .line 78
    .restart local v1       #plugged:Z
    :cond_2
    iget-object v2, p0, Lcom/android/deskclock/Screensaver$2;->this$0:Lcom/android/deskclock/Screensaver;

    invoke-virtual {v2}, Lcom/android/deskclock/Screensaver;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method
