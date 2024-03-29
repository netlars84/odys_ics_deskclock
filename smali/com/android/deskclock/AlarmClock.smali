.class public Lcom/android/deskclock/AlarmClock;
.super Landroid/app/Activity;
.source "AlarmClock.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/AlarmClock$AlarmTimeAdapter;
    }
.end annotation


# instance fields
.field private mAlarmsList:Landroid/widget/ListView;

.field private mCursor:Landroid/database/Cursor;

.field private mFactory:Landroid/view/LayoutInflater;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/AlarmClock;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock;->mFactory:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/deskclock/AlarmClock;ZLcom/android/deskclock/Alarm;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/AlarmClock;->updateAlarm(ZLcom/android/deskclock/Alarm;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/deskclock/AlarmClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/deskclock/AlarmClock;->addNewAlarm()V

    return-void
.end method

.method private addNewAlarm()V
    .locals 2

    .prologue
    .line 236
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/SetAlarm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmClock;->startActivity(Landroid/content/Intent;)V

    .line 237
    return-void
.end method

.method private updateAlarm(ZLcom/android/deskclock/Alarm;)V
    .locals 3
    .parameter "enabled"
    .parameter "alarm"

    .prologue
    .line 64
    iget v0, p2, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p0, v0, p1}, Lcom/android/deskclock/Alarms;->enableAlarm(Landroid/content/Context;IZ)V

    .line 65
    if-eqz p1, :cond_0

    .line 66
    iget v0, p2, Lcom/android/deskclock/Alarm;->hour:I

    iget v1, p2, Lcom/android/deskclock/Alarm;->minutes:I

    iget-object v2, p2, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-static {p0, v0, v1, v2}, Lcom/android/deskclock/SetAlarm;->popAlarmSetToast(Landroid/content/Context;IILcom/android/deskclock/Alarm$DaysOfWeek;)V

    .line 69
    :cond_0
    return-void
.end method

.method private updateLayout()V
    .locals 5

    .prologue
    .line 205
    const v3, 0x7f040002

    invoke-virtual {p0, v3}, Lcom/android/deskclock/AlarmClock;->setContentView(I)V

    .line 206
    const v3, 0x7f0f0008

    invoke-virtual {p0, v3}, Lcom/android/deskclock/AlarmClock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/deskclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    .line 207
    new-instance v0, Lcom/android/deskclock/AlarmClock$AlarmTimeAdapter;

    iget-object v3, p0, Lcom/android/deskclock/AlarmClock;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, p0, p0, v3}, Lcom/android/deskclock/AlarmClock$AlarmTimeAdapter;-><init>(Lcom/android/deskclock/AlarmClock;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 208
    .local v0, adapter:Lcom/android/deskclock/AlarmClock$AlarmTimeAdapter;
    iget-object v3, p0, Lcom/android/deskclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 209
    iget-object v3, p0, Lcom/android/deskclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 210
    iget-object v3, p0, Lcom/android/deskclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 211
    iget-object v3, p0, Lcom/android/deskclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 213
    const v3, 0x7f0f0007

    invoke-virtual {p0, v3}, Lcom/android/deskclock/AlarmClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 214
    .local v1, addAlarm:Landroid/view/View;
    new-instance v3, Lcom/android/deskclock/AlarmClock$2;

    invoke-direct {v3, p0}, Lcom/android/deskclock/AlarmClock$2;-><init>(Lcom/android/deskclock/AlarmClock;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    new-instance v3, Lcom/android/deskclock/AlarmClock$3;

    invoke-direct {v3, p0}, Lcom/android/deskclock/AlarmClock$3;-><init>(Lcom/android/deskclock/AlarmClock;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 225
    const v3, 0x7f0f0009

    invoke-virtual {p0, v3}, Lcom/android/deskclock/AlarmClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 226
    .local v2, doneButton:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 227
    new-instance v3, Lcom/android/deskclock/AlarmClock$4;

    invoke-direct {v3, p0}, Lcom/android/deskclock/AlarmClock$4;-><init>(Lcom/android/deskclock/AlarmClock;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    :cond_0
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 140
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 142
    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    long-to-int v2, v2

    .line 144
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 145
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 190
    :cond_0
    :goto_0
    return v1

    .line 147
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 190
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 150
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0006

    invoke-virtual {p0, v3}, Lcom/android/deskclock/AlarmClock;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0b0009

    invoke-virtual {p0, v3}, Lcom/android/deskclock/AlarmClock;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x104000a

    new-instance v4, Lcom/android/deskclock/AlarmClock$1;

    invoke-direct {v4, p0, v2}, Lcom/android/deskclock/AlarmClock$1;-><init>(Lcom/android/deskclock/AlarmClock;I)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 166
    :pswitch_1
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 168
    new-instance v2, Lcom/android/deskclock/Alarm;

    invoke-direct {v2, v0}, Lcom/android/deskclock/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 169
    iget v3, v2, Lcom/android/deskclock/Alarm;->id:I

    iget-boolean v0, v2, Lcom/android/deskclock/Alarm;->enabled:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {p0, v3, v0}, Lcom/android/deskclock/Alarms;->enableAlarm(Landroid/content/Context;IZ)V

    .line 170
    iget-boolean v0, v2, Lcom/android/deskclock/Alarm;->enabled:Z

    if-nez v0, :cond_0

    .line 171
    iget v0, v2, Lcom/android/deskclock/Alarm;->hour:I

    iget v3, v2, Lcom/android/deskclock/Alarm;->minutes:I

    iget-object v2, v2, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-static {p0, v0, v3, v2}, Lcom/android/deskclock/SetAlarm;->popAlarmSetToast(Landroid/content/Context;IILcom/android/deskclock/Alarm$DaysOfWeek;)V

    goto :goto_0

    .line 169
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 178
    :pswitch_2
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 180
    new-instance v2, Lcom/android/deskclock/Alarm;

    invoke-direct {v2, v0}, Lcom/android/deskclock/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/deskclock/SetAlarm;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    const-string v3, "intent.extra.alarm"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmClock;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f002d
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 197
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AlarmClock;->mFactory:Landroid/view/LayoutInflater;

    .line 198
    const-string v0, "AlarmClock"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/deskclock/AlarmClock;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AlarmClock;->mPrefs:Landroid/content/SharedPreferences;

    .line 199
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Alarms;->getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AlarmClock;->mCursor:Landroid/database/Cursor;

    .line 201
    invoke-direct {p0}, Lcom/android/deskclock/AlarmClock;->updateLayout()V

    .line 202
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmClock;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    const v8, 0x7f0e0001

    invoke-virtual {v7, v8, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    move-object v3, p3

    .line 255
    check-cast v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 256
    .local v3, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v7, p0, Lcom/android/deskclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    iget v8, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v7, v8}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 258
    .local v1, c:Landroid/database/Cursor;
    new-instance v0, Lcom/android/deskclock/Alarm;

    invoke-direct {v0, v1}, Lcom/android/deskclock/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 261
    .local v0, alarm:Lcom/android/deskclock/Alarm;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 262
    .local v2, cal:Ljava/util/Calendar;
    const/16 v7, 0xb

    iget v8, v0, Lcom/android/deskclock/Alarm;->hour:I

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 263
    const/16 v7, 0xc

    iget v8, v0, Lcom/android/deskclock/Alarm;->minutes:I

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 264
    invoke-static {p0, v2}, Lcom/android/deskclock/Alarms;->formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v5

    .line 267
    .local v5, time:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/deskclock/AlarmClock;->mFactory:Landroid/view/LayoutInflater;

    const v8, 0x7f040006

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 268
    .local v6, v:Landroid/view/View;
    const v7, 0x7f0f0010

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 269
    .local v4, textView:Landroid/widget/TextView;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    const v7, 0x7f0f0011

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #textView:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 271
    .restart local v4       #textView:Landroid/widget/TextView;
    iget-object v7, v0, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 276
    iget-boolean v7, v0, Lcom/android/deskclock/Alarm;->enabled:Z

    if-eqz v7, :cond_0

    .line 277
    const v7, 0x7f0f002d

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    const v8, 0x7f0b0008

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 279
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmClock;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 306
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 242
    invoke-static {}, Lcom/android/deskclock/ToastMaster;->cancelToast()V

    .line 243
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 313
    new-instance v1, Lcom/android/deskclock/Alarm;

    invoke-direct {v1, v0}, Lcom/android/deskclock/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 314
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/deskclock/SetAlarm;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 315
    const-string v2, "intent.extra.alarm"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 316
    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmClock;->startActivity(Landroid/content/Intent;)V

    .line 317
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 283
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 300
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 285
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/deskclock/SettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/android/deskclock/AlarmClock;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 288
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/deskclock/DeskClock;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/android/deskclock/AlarmClock;->startActivity(Landroid/content/Intent;)V

    .line 289
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmClock;->finish()V

    goto :goto_0

    .line 292
    :pswitch_2
    invoke-direct {p0}, Lcom/android/deskclock/AlarmClock;->addNewAlarm()V

    goto :goto_0

    .line 295
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmClock;->finish()V

    goto :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x7f0f0029
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
