.class Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;
.super Lcom/android/systemui/statusbar/BaseStatusBar$H;
.source "TabletStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1271
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Lcom/android/systemui/statusbar/tablet/TabletStatusBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1271
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .parameter "m"

    .prologue
    .line 1273
    invoke-super/range {p0 .. p1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->handleMessage(Landroid/os/Message;)V

    .line 1274
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1581
    :cond_0
    :goto_0
    return-void

    .line 1278
    :sswitch_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-ltz v3, :cond_0

    .line 1279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1200(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v9

    .line 1281
    .local v9, N:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDMode:Z

    if-nez v3, :cond_1

    .line 1282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekIndex:I

    if-ltz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekIndex:I

    if-ge v3, v9, :cond_1

    .line 1283
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1300(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v3

    add-int/lit8 v4, v9, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget v5, v5, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekIndex:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v11

    .line 1284
    .local v11, entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v3, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setBackgroundColor(I)V

    .line 1285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    const/4 v4, -0x1

    iput v4, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekIndex:I

    .line 1286
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekKey:Landroid/os/IBinder;

    .line 1290
    .end local v11           #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 1291
    .local v16, peekIndex:I
    move/from16 v0, v16

    if-ge v0, v9, :cond_0

    .line 1293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDMode:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v11, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDDummyEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 1297
    .restart local v11       #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :goto_1
    new-instance v10, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v3, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    iget-object v4, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v5, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-direct {v10, v3, v4, v5}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 1301
    .local v10, copy:Lcom/android/systemui/statusbar/NotificationData$Entry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekRow:Landroid/view/ViewGroup;

    #calls: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    invoke-static {v3, v10, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1500(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    .line 1303
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDMode:Z

    if-eqz v3, :cond_2

    .line 1304
    iget-object v3, v10, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H$1;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1315
    :cond_2
    iget-object v3, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    const v4, 0x20ffffff

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setBackgroundColor(I)V

    .line 1322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekRow:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekRow:Landroid/view/ViewGroup;

    iget-object v4, v10, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1325
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekWindow:Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;->setVisibility(I)V

    .line 1326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->show(ZZ)V

    .line 1328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    move/from16 v0, v16

    iput v0, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekIndex:I

    .line 1329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v4, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    iput-object v4, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekKey:Landroid/os/IBinder;

    goto/16 :goto_0

    .line 1293
    .end local v10           #copy:Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v11           #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v3

    add-int/lit8 v4, v9, -0x1

    sub-int v4, v4, v16

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v11

    goto :goto_1

    .line 1335
    .end local v9           #N:I
    .end local v16           #peekIndex:I
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekWindow:Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;->setVisibility(I)V

    .line 1336
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekRow:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1338
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v9

    .line 1339
    .restart local v9       #N:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekIndex:I

    if-ltz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekIndex:I

    if-ge v3, v9, :cond_4

    .line 1340
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDMode:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v11, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDDummyEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 1344
    .restart local v11       #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :goto_2
    iget-object v3, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setBackgroundColor(I)V

    .line 1347
    .end local v11           #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    const/4 v4, -0x1

    iput v4, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekIndex:I

    .line 1348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekKey:Landroid/os/IBinder;

    goto/16 :goto_0

    .line 1340
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1800(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v3

    add-int/lit8 v4, v9, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget v5, v5, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekIndex:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v11

    goto :goto_2

    .line 1352
    .end local v9           #N:I
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1353
    sget-boolean v3, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v3, :cond_6

    .line 1354
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setQuickSettingsStartOffset()V

    .line 1356
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->show(ZZ)V

    .line 1357
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationArea:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->halt()V

    goto/16 :goto_0

    .line 1363
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1364
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->show(ZZ)V

    .line 1365
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationArea:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1370
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1900(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1900(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->openPanel()V

    goto/16 :goto_0

    .line 1374
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1900(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1900(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->closePanel(Z)V

    goto/16 :goto_0

    .line 1378
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->openPanel()V

    goto/16 :goto_0

    .line 1382
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->closePanel()V

    goto/16 :goto_0

    .line 1386
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBarContents:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1387
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShadow:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    const/4 v4, -0x2

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2172(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;I)I

    .line 1389
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #calls: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->notifyUiVisibilityChanged()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2200(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    goto/16 :goto_0

    .line 1393
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    .line 1394
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    const/4 v4, 0x0

    #calls: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->visibilityChanged(Z)V
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2300(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)V

    .line 1395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBarContents:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1397
    sget-boolean v3, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v3, :cond_7

    .line 1398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mQuickLaunchButton:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->isQuickLaunchNoneMode()Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v18, 0x8

    .line 1399
    .local v18, vis:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShadow:Landroid/view/View;

    const v4, 0x7f0d0087

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 1400
    .local v17, shadowButton:Landroid/view/View;
    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 1403
    .end local v17           #shadowButton:Landroid/view/View;
    .end local v18           #vis:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShadow:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1404
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2176(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;I)I

    .line 1405
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #calls: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->notifyUiVisibilityChanged()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2200(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    goto/16 :goto_0

    .line 1398
    :cond_8
    const/16 v18, 0x0

    goto :goto_3

    .line 1409
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayEnabled:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    if-eqz v3, :cond_0

    .line 1410
    const-string v3, "TabletStatusBar"

    const-string v4, "opening mini mode apps panel"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/ViewGroup;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 1413
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2500(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v3

    const/16 v4, 0x425

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/ViewGroup;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1422
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOpenMiniAppsPanel:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/ViewGroup;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1429
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanelInAnim:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2600(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/animation/Animation;->reset()V

    .line 1430
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarOutAnim:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/animation/Animation;->reset()V

    .line 1432
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarContainerView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2800(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarOutAnim:Landroid/view/animation/Animation;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2900(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanelInAnim:Landroid/view/animation/Animation;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2600(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1434
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    goto/16 :goto_0

    .line 1444
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayEnabled:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    if-eqz v3, :cond_0

    .line 1445
    const-string v3, "TabletStatusBar"

    const-string v4, "closing mini mode apps panel"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1448
    .local v1, now:J
    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v3, v1

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v12

    .line 1449
    .local v12, ev:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/ViewGroup;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 1453
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1459
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCloseMiniAppsPanel:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/ViewGroup;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1468
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMultiWindowEnabled:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1469
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanelOutAnim:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3100(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;

    move-result-object v3

    const-wide/16 v4, 0x1a4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarInAnim:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3200(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;

    move-result-object v3

    const-wide/16 v4, 0x1a4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1515
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanelOutAnim:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3100(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/animation/Animation;->reset()V

    .line 1516
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarInAnim:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3200(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/animation/Animation;->reset()V

    .line 1519
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarContainerView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2800(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarInAnim:Landroid/view/animation/Animation;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3200(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1520
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2900(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanelOutAnim:Landroid/view/animation/Animation;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3100(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1521
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    .line 1524
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMultiWindowEnabled:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1525
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3300(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v3

    const/16 v4, 0x42f

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1526
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v3

    const/16 v4, 0x42f

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1527
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3500(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v3

    const/16 v4, 0x439

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1528
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3600(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v3

    const/16 v4, 0x439

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1472
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/ViewGroup;

    move-result-object v3

    const v4, 0x7f0d0049

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    .line 1473
    .local v15, miniAppPanelContainer:Landroid/view/ViewGroup;
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    .line 1474
    .local v13, miniAppItemCount:I
    add-int/lit8 v3, v13, -0x1

    mul-int/lit8 v14, v3, 0x28

    .line 1476
    .local v14, miniAppItemHideAnimDelay:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanelOutAnim:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3100(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;

    move-result-object v3

    int-to-long v4, v14

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1477
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarInAnim:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3200(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;

    move-result-object v3

    int-to-long v4, v14

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    goto/16 :goto_6

    .line 1539
    .end local v1           #now:J
    .end local v12           #ev:Landroid/view/MotionEvent;
    .end local v13           #miniAppItemCount:I
    .end local v14           #miniAppItemHideAnimDelay:I
    .end local v15           #miniAppPanelContainer:Landroid/view/ViewGroup;
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMultiWindowEnabled:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1540
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMultiWindowControlPanel:Lcom/android/systemui/multiwindow/MultiWindowControlPanel;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/multiwindow/MultiWindowControlPanel;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMultiWindowControlPanel:Lcom/android/systemui/multiwindow/MultiWindowControlPanel;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/multiwindow/MultiWindowControlPanel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1542
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMultiWindowControlPanel:Lcom/android/systemui/multiwindow/MultiWindowControlPanel;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/multiwindow/MultiWindowControlPanel;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->show(ZZ)V

    goto/16 :goto_0

    .line 1548
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMultiWindowEnabled:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1549
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMultiWindowControlPanel:Lcom/android/systemui/multiwindow/MultiWindowControlPanel;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/multiwindow/MultiWindowControlPanel;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMultiWindowControlPanel:Lcom/android/systemui/multiwindow/MultiWindowControlPanel;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/multiwindow/MultiWindowControlPanel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1551
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMultiWindowControlPanel:Lcom/android/systemui/multiwindow/MultiWindowControlPanel;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/multiwindow/MultiWindowControlPanel;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->show(ZZ)V

    goto/16 :goto_0

    .line 1557
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMultiWindowEnabled:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1558
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMultiWindowListPanel:Lcom/android/systemui/multiwindow/MultiWindowListPanel;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3800(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/multiwindow/MultiWindowListPanel;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMultiWindowListPanel:Lcom/android/systemui/multiwindow/MultiWindowListPanel;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3800(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/multiwindow/MultiWindowListPanel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1560
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMultiWindowListPanel:Lcom/android/systemui/multiwindow/MultiWindowListPanel;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3800(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/multiwindow/MultiWindowListPanel;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->show(ZZ)V

    goto/16 :goto_0

    .line 1566
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMultiWindowEnabled:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1567
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMultiWindowListPanel:Lcom/android/systemui/multiwindow/MultiWindowListPanel;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3800(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/multiwindow/MultiWindowListPanel;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMultiWindowListPanel:Lcom/android/systemui/multiwindow/MultiWindowListPanel;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3800(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/multiwindow/MultiWindowListPanel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1569
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMultiWindowListPanel:Lcom/android/systemui/multiwindow/MultiWindowListPanel;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3800(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/multiwindow/MultiWindowListPanel;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->show(ZZ)V

    goto/16 :goto_0

    .line 1573
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSplitPanel:Lcom/android/systemui/multiwindow/SplitPanelView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/systemui/multiwindow/SplitPanelView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1578
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->halt()V

    goto/16 :goto_0

    .line 1461
    .restart local v1       #now:J
    .restart local v12       #ev:Landroid/view/MotionEvent;
    :catch_0
    move-exception v3

    goto/16 :goto_5

    .line 1460
    :catch_1
    move-exception v3

    goto/16 :goto_5

    .line 1424
    .end local v1           #now:J
    .end local v12           #ev:Landroid/view/MotionEvent;
    :catch_2
    move-exception v3

    goto/16 :goto_4

    .line 1423
    :catch_3
    move-exception v3

    goto/16 :goto_4

    .line 1274
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_2
        0x3e9 -> :sswitch_3
        0x3ea -> :sswitch_0
        0x3eb -> :sswitch_1
        0x406 -> :sswitch_8
        0x407 -> :sswitch_9
        0x410 -> :sswitch_4
        0x411 -> :sswitch_5
        0x41a -> :sswitch_6
        0x41b -> :sswitch_7
        0x424 -> :sswitch_a
        0x425 -> :sswitch_b
        0x42e -> :sswitch_c
        0x42f -> :sswitch_d
        0x438 -> :sswitch_e
        0x439 -> :sswitch_f
        0x442 -> :sswitch_10
        0x7d0 -> :sswitch_11
    .end sparse-switch
.end method
