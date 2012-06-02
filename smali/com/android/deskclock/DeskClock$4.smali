.class Lcom/android/deskclock/DeskClock$4;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/DeskClock;->initViews()V
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
    .line 502
    iput-object p1, p0, Lcom/android/deskclock/DeskClock$4;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 506
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$4;->this$0:Lcom/android/deskclock/DeskClock;

    #getter for: Lcom/android/deskclock/DeskClock;->mScreenSaverMode:Z
    invoke-static {v0}, Lcom/android/deskclock/DeskClock;->access$700(Lcom/android/deskclock/DeskClock;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    iget-object v2, p0, Lcom/android/deskclock/DeskClock$4;->this$0:Lcom/android/deskclock/DeskClock;

    iget-object v0, p0, Lcom/android/deskclock/DeskClock$4;->this$0:Lcom/android/deskclock/DeskClock;

    #getter for: Lcom/android/deskclock/DeskClock;->mDimmed:Z
    invoke-static {v0}, Lcom/android/deskclock/DeskClock;->access$500(Lcom/android/deskclock/DeskClock;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    #setter for: Lcom/android/deskclock/DeskClock;->mDimmed:Z
    invoke-static {v2, v0}, Lcom/android/deskclock/DeskClock;->access$502(Lcom/android/deskclock/DeskClock;Z)Z

    .line 508
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$4;->this$0:Lcom/android/deskclock/DeskClock;

    #calls: Lcom/android/deskclock/DeskClock;->doDim(Z)V
    invoke-static {v0, v1}, Lcom/android/deskclock/DeskClock;->access$600(Lcom/android/deskclock/DeskClock;Z)V

    .line 510
    :cond_0
    return-void

    .line 507
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
