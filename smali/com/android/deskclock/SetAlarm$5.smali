.class Lcom/android/deskclock/SetAlarm$5;
.super Ljava/lang/Object;
.source "SetAlarm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/SetAlarm;->deleteAlarm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/SetAlarm;


# direct methods
.method constructor <init>(Lcom/android/deskclock/SetAlarm;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/deskclock/SetAlarm$5;->this$0:Lcom/android/deskclock/SetAlarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "d"
    .parameter "w"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm$5;->this$0:Lcom/android/deskclock/SetAlarm;

    iget-object v1, p0, Lcom/android/deskclock/SetAlarm$5;->this$0:Lcom/android/deskclock/SetAlarm;

    #getter for: Lcom/android/deskclock/SetAlarm;->mId:I
    invoke-static {v1}, Lcom/android/deskclock/SetAlarm;->access$400(Lcom/android/deskclock/SetAlarm;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/deskclock/Alarms;->deleteAlarm(Landroid/content/Context;I)V

    .line 300
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm$5;->this$0:Lcom/android/deskclock/SetAlarm;

    invoke-virtual {v0}, Lcom/android/deskclock/SetAlarm;->finish()V

    .line 301
    return-void
.end method
