.class Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;
.super Ljava/lang/Object;
.source "TabletStatusBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationIconTouchListener"
.end annotation


# instance fields
.field mInitialTouchX:F

.field mInitialTouchY:F

.field mPeekIndex:I

.field mTouchSlop:I

.field mVT:Landroid/view/VelocityTracker;

.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 1
    .parameter

    .prologue
    .line 2328
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2329
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mTouchSlop:I

    .line 2330
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v11, 0x3e8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/16 v10, 0x3ea

    .line 2333
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekWindow:Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    move v5, v6

    .line 2334
    .local v5, peeking:Z
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->isShowing()Z

    move-result v3

    .line 2335
    .local v3, panelShowing:Z
    if-eqz v3, :cond_1

    .line 2421
    :goto_1
    return v7

    .end local v3           #panelShowing:Z
    .end local v5           #peeking:Z
    :cond_0
    move v5, v7

    .line 2333
    goto :goto_0

    .line 2337
    .restart local v3       #panelShowing:Z
    .restart local v5       #peeking:Z
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->getChildCount()I

    move-result v2

    .line 2338
    .local v2, numIcons:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    int-to-float v9, v2

    mul-float/2addr v8, v9

    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    float-to-int v1, v8

    .line 2339
    .local v1, newPeekIndex:I
    add-int/lit8 v8, v2, -0x1

    if-le v1, v8, :cond_7

    add-int/lit8 v1, v2, -0x1

    .line 2342
    :cond_2
    :goto_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2343
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 2345
    :pswitch_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mVT:Landroid/view/VelocityTracker;

    .line 2346
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mInitialTouchX:F

    .line 2347
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mInitialTouchY:F

    .line 2348
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mPeekIndex:I

    .line 2355
    :pswitch_1
    iget v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mPeekIndex:I

    if-eq v1, v7, :cond_3

    .line 2356
    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mPeekIndex:I

    .line 2359
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$4400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 2360
    .local v4, peekMsg:Landroid/os/Message;
    iget v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mPeekIndex:I

    iput v7, v4, Landroid/os/Message;->arg1:I

    .line 2362
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$4500(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2364
    if-eqz v5, :cond_8

    .line 2366
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$4600(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendMessage(Landroid/os/Message;)Z

    .line 2374
    .end local v4           #peekMsg:Landroid/os/Message;
    :cond_3
    :goto_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mVT:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_6

    .line 2375
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mVT:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2376
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mVT:Landroid/view/VelocityTracker;

    invoke-virtual {v7, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 2378
    if-nez v3, :cond_6

    if-eqz v5, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mVT:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget v8, v8, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationFlingVelocity:I

    neg-int v8, v8

    mul-int/lit8 v8, v8, 0x3

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_5

    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mVT:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget v8, v8, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationFlingVelocity:I

    neg-int v8, v8

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_6

    .line 2381
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$4800(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2382
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$4900(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2383
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$5000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v7

    const/16 v8, 0x3eb

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 2384
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$5100(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    :cond_6
    move v7, v6

    .line 2387
    goto/16 :goto_1

    .line 2340
    .end local v0           #action:I
    :cond_7
    if-gez v1, :cond_2

    const/4 v1, 0x0

    goto/16 :goto_2

    .line 2369
    .restart local v0       #action:I
    .restart local v4       #peekMsg:Landroid/os/Message;
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$4700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v7

    const-wide/16 v8, 0xc8

    invoke-virtual {v7, v4, v8, v9}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    .line 2390
    .end local v4           #peekMsg:Landroid/os/Message;
    :pswitch_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v8}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$5200(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2391
    if-nez v5, :cond_9

    .line 2392
    if-ne v0, v6, :cond_9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mInitialTouchX:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mTouchSlop:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mInitialTouchY:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sget-boolean v8, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v8, :cond_b

    iget v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mTouchSlop:I

    :goto_4
    int-to-float v8, v8

    cmpg-float v8, v9, v8

    if-gez v8, :cond_9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_9

    .line 2401
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v8}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$5300(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 2402
    .restart local v4       #peekMsg:Landroid/os/Message;
    iget v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mPeekIndex:I

    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 2403
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v8}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$5400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2404
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v8}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$5500(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendMessage(Landroid/os/Message;)Z

    .line 2406
    invoke-virtual {p1, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2407
    invoke-virtual {p1, v7}, Landroid/view/View;->playSoundEffect(I)V

    .line 2409
    const/4 v5, 0x1

    .line 2413
    .end local v4           #peekMsg:Landroid/os/Message;
    :cond_9
    if-eqz v5, :cond_a

    .line 2414
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->resetNotificationPeekFadeTimer()V

    .line 2417
    :cond_a
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mVT:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->recycle()V

    .line 2418
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mVT:Landroid/view/VelocityTracker;

    move v7, v6

    .line 2419
    goto/16 :goto_1

    .line 2392
    :cond_b
    iget v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mTouchSlop:I

    div-int/lit8 v8, v8, 0x3

    goto :goto_4

    .line 2343
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
