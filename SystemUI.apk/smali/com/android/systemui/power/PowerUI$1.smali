.class Lcom/android/systemui/power/PowerUI$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, action:Ljava/lang/String;
    const-string v13, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    .line 207
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v13, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 208
    .local v4, oldBatteryLevel:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v14, "level"

    const/16 v15, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    iput v14, v13, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 209
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v6, v13, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 210
    .local v6, oldBatteryStatus:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v14, "status"

    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    iput v14, v13, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 212
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v13, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 213
    .local v3, oldBatteryHealth:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v14, "health"

    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    iput v14, v13, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 215
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v9, v13, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 216
    .local v9, oldPlugType:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v14, "plugged"

    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    iput v14, v13, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 217
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v8, v13, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 218
    .local v8, oldInvalidCharger:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v14, "invalid_charger"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    iput v14, v13, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 219
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v5, v13, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    .line 220
    .local v5, oldBatteryOnline:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v14}, Lcom/android/systemui/power/PowerUI;->getBatteryOnline()I

    move-result v14

    iput v14, v13, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    .line 222
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v13, v13, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eqz v13, :cond_9

    const/4 v11, 0x1

    .line 223
    .local v11, plugged:Z
    :goto_0
    if-eqz v9, :cond_a

    const/4 v10, 0x1

    .line 225
    .local v10, oldPlugged:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    #calls: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static {v13, v4}, Lcom/android/systemui/power/PowerUI;->access$000(Lcom/android/systemui/power/PowerUI;I)I

    move-result v7

    .line 226
    .local v7, oldBucket:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v14, v14, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    #calls: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static {v13, v14}, Lcom/android/systemui/power/PowerUI;->access$000(Lcom/android/systemui/power/PowerUI;I)I

    move-result v2

    .line 269
    .local v2, bucket:I
    if-nez v11, :cond_b

    if-eqz v10, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v13, v13, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_b

    if-gez v2, :cond_b

    .line 273
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    .line 294
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v13, v13, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-eq v6, v13, :cond_3

    .line 295
    const/4 v13, 0x5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v14, v14, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v13, v14, :cond_10

    .line 296
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->notifyFullBatteryNotification()V

    .line 301
    :cond_1
    :goto_3
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v14, v14, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v13, v14, :cond_13

    .line 302
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v13, v13, Lcom/android/systemui/power/PowerUI;->mNotChargeScreenDimLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v13, v13, Lcom/android/systemui/power/PowerUI;->mNotChargePartialLock:Landroid/os/PowerManager$WakeLock;

    if-nez v13, :cond_12

    .line 303
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v13, v13, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v14, "power"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PowerManager;

    .line 304
    .local v12, powerManager:Landroid/os/PowerManager;
    if-nez v12, :cond_11

    .line 305
    const-string v13, "PowerUI"

    const-string v14, "onReceive : fail to get PowerManager reference"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .end local v12           #powerManager:Landroid/os/PowerManager;
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->showNotChargeDialog()V

    .line 328
    :cond_3
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v13, v13, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v3, v13, :cond_5

    .line 329
    const/4 v13, 0x5

    if-eq v13, v3, :cond_4

    const/4 v13, 0x5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v14, v14, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v13, v14, :cond_5

    .line 330
    :cond_4
    const-string v13, "PowerUI"

    const-string v14, "Overvoltage (recovered) so turn on the screen."

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->turnOnScreen()V

    .line 335
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v13, v13, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eq v9, v13, :cond_7

    .line 336
    if-eqz v9, :cond_6

    const/4 v13, -0x1

    if-ne v13, v9, :cond_7

    .line 337
    :cond_6
    if-nez v9, :cond_7

    .line 338
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/systemui/power/PowerUI;->playSound(I)V

    .line 343
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v13, v13, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v5, v13, :cond_8

    .line 344
    if-nez v5, :cond_14

    const/16 v13, 0xa

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v14, v14, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v13, v14, :cond_14

    .line 345
    const-string v13, "PowerUI"

    const-string v14, "start Wireless charging"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const v14, 0x7f0a00b6

    invoke-virtual {v13, v14}, Lcom/android/systemui/power/PowerUI;->showWirelessChargeDialog(I)V

    .line 377
    .end local v2           #bucket:I
    .end local v3           #oldBatteryHealth:I
    .end local v4           #oldBatteryLevel:I
    .end local v5           #oldBatteryOnline:I
    .end local v6           #oldBatteryStatus:I
    .end local v7           #oldBucket:I
    .end local v8           #oldInvalidCharger:I
    .end local v9           #oldPlugType:I
    .end local v10           #oldPlugged:Z
    .end local v11           #plugged:Z
    :cond_8
    :goto_6
    return-void

    .line 222
    .restart local v3       #oldBatteryHealth:I
    .restart local v4       #oldBatteryLevel:I
    .restart local v5       #oldBatteryOnline:I
    .restart local v6       #oldBatteryStatus:I
    .restart local v8       #oldInvalidCharger:I
    .restart local v9       #oldPlugType:I
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 223
    .restart local v11       #plugged:Z
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 274
    .restart local v2       #bucket:I
    .restart local v7       #oldBucket:I
    .restart local v10       #oldPlugged:Z
    :cond_b
    if-ge v2, v7, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v13, v13, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_d

    if-gez v2, :cond_d

    .line 277
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->isOverCurrent()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 278
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    goto/16 :goto_2

    .line 279
    :cond_c
    if-nez v11, :cond_0

    .line 280
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    goto/16 :goto_2

    .line 282
    :cond_d
    if-le v2, v7, :cond_e

    if-lez v2, :cond_e

    .line 283
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    goto/16 :goto_2

    .line 284
    :cond_e
    if-eqz v11, :cond_0

    if-nez v10, :cond_0

    if-gez v2, :cond_0

    .line 287
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->isOverCurrent()Z

    move-result v13

    if-nez v13, :cond_f

    .line 288
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    goto/16 :goto_2

    .line 289
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v13, v13, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 290
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    goto/16 :goto_2

    .line 297
    :cond_10
    const/4 v13, 0x5

    if-ne v13, v6, :cond_1

    .line 298
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->cancelFullBatteryNotification()V

    goto/16 :goto_3

    .line 307
    .restart local v12       #powerManager:Landroid/os/PowerManager;
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v14, 0x6

    const-string v15, "PowerUI"

    invoke-virtual {v12, v14, v15}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    iput-object v14, v13, Lcom/android/systemui/power/PowerUI;->mNotChargeScreenDimLock:Landroid/os/PowerManager$WakeLock;

    .line 308
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v14, 0x1

    const-string v15, "PowerUI"

    invoke-virtual {v12, v14, v15}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    iput-object v14, v13, Lcom/android/systemui/power/PowerUI;->mNotChargePartialLock:Landroid/os/PowerManager$WakeLock;

    .line 309
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v13, v13, Lcom/android/systemui/power/PowerUI;->mNotChargeScreenDimLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 310
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v13, v13, Lcom/android/systemui/power/PowerUI;->mNotChargePartialLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto/16 :goto_4

    .line 313
    .end local v12           #powerManager:Landroid/os/PowerManager;
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v13, v13, Lcom/android/systemui/power/PowerUI;->mNotChargeScreenDimLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 314
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v13, v13, Lcom/android/systemui/power/PowerUI;->mNotChargePartialLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto/16 :goto_4

    .line 318
    :cond_13
    const/4 v13, 0x4

    if-ne v13, v6, :cond_3

    .line 319
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->dismissNotChargeDialog()V

    .line 321
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v13, v13, Lcom/android/systemui/power/PowerUI;->mNotChargeScreenDimLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v13, :cond_3

    .line 322
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v13, v13, Lcom/android/systemui/power/PowerUI;->mNotChargeScreenDimLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 323
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v13, v13, Lcom/android/systemui/power/PowerUI;->mNotChargePartialLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_5

    .line 347
    :cond_14
    const/16 v13, 0xa

    if-ne v13, v5, :cond_16

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v14, v14, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v13, v14, :cond_15

    const/4 v13, 0x3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v14, v14, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v13, v14, :cond_16

    .line 349
    :cond_15
    const-string v13, "PowerUI"

    const-string v14, "switch from wireless to cable"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const v14, 0x7f0a00b7

    invoke-virtual {v13, v14}, Lcom/android/systemui/power/PowerUI;->showWirelessChargeDialog(I)V

    goto/16 :goto_6

    .line 351
    :cond_16
    const/4 v13, 0x2

    if-eq v13, v5, :cond_17

    const/4 v13, 0x3

    if-ne v13, v5, :cond_18

    :cond_17
    const/16 v13, 0xa

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v14, v14, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v13, v14, :cond_18

    .line 353
    const-string v13, "PowerUI"

    const-string v14, "switch from cable to wireless"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const v14, 0x7f0a00b8

    invoke-virtual {v13, v14}, Lcom/android/systemui/power/PowerUI;->showWirelessChargeDialog(I)V

    goto/16 :goto_6

    .line 355
    :cond_18
    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v13, v13, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-nez v13, :cond_8

    .line 356
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->dismissWirelessChargeDialog()V

    goto/16 :goto_6

    .line 359
    .end local v2           #bucket:I
    .end local v3           #oldBatteryHealth:I
    .end local v4           #oldBatteryLevel:I
    .end local v5           #oldBatteryOnline:I
    .end local v6           #oldBatteryStatus:I
    .end local v7           #oldBucket:I
    .end local v8           #oldInvalidCharger:I
    .end local v9           #oldPlugType:I
    .end local v10           #oldPlugged:Z
    .end local v11           #plugged:Z
    :cond_19
    const-string v13, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 360
    const/4 v13, 0x5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v14, v14, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v13, v14, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v13, v13, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    if-eqz v13, :cond_8

    .line 361
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->cancelFullBatteryNotification()V

    .line 362
    const-string v13, "PowerUI"

    const-string v14, "Language is changed so notify FullBatteryNotification again"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->notifyFullBatteryNotification()V

    goto/16 :goto_6

    .line 365
    :cond_1a
    const-string v13, "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 366
    const-string v13, "PowerUI"

    const-string v14, "Face detection is failed before dimming"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->notifyFaceDetectionFailureNotification()V

    goto/16 :goto_6

    .line 368
    :cond_1b
    const-string v13, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 369
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    .line 370
    const-string v13, "PowerUI"

    const-string v14, "FTA mode ON"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 371
    :cond_1c
    const-string v13, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 372
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    .line 373
    const-string v13, "PowerUI"

    const-string v14, "FTA mode OFF"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 375
    :cond_1d
    const-string v13, "PowerUI"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "unknown intent: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method
