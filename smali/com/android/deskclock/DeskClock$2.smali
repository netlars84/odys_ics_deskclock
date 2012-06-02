.class Lcom/android/deskclock/DeskClock$2;
.super Landroid/os/Handler;
.source "DeskClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/DeskClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/DeskClock;


# direct methods
.method constructor <init>(Lcom/android/deskclock/DeskClock;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/deskclock/DeskClock$2;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$2;->this$0:Lcom/android/deskclock/DeskClock;

    #calls: Lcom/android/deskclock/DeskClock;->saveScreen()V
    invoke-static {v0}, Lcom/android/deskclock/DeskClock;->access$300(Lcom/android/deskclock/DeskClock;)V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2001

    if-ne v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$2;->this$0:Lcom/android/deskclock/DeskClock;

    #calls: Lcom/android/deskclock/DeskClock;->moveScreenSaver()V
    invoke-static {v0}, Lcom/android/deskclock/DeskClock;->access$400(Lcom/android/deskclock/DeskClock;)V

    goto :goto_0
.end method
