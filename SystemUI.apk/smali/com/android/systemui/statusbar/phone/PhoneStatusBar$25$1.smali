.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25$1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;

.field final synthetic val$notifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field final synthetic val$snapshot:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;Lcom/android/systemui/statusbar/policy/NotificationRowLayout;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3451
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25$1;->val$notifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25$1;->val$snapshot:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 3456
    const/16 v0, 0xa

    .line 3457
    .local v0, ROW_DELAY_DECREMENT:I
    const/16 v2, 0x8c

    .line 3458
    .local v2, currentDelay:I
    const/4 v5, 0x0

    .line 3463
    .local v5, totalDelay:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25$1;->val$notifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v8, v10}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setViewRemoval(Z)V

    .line 3465
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    new-instance v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25$1$1;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25$1$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25$1;)V

    iput-object v9, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseCleanup:Ljava/lang/Runnable;

    .line 3475
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25$1;->val$snapshot:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 3476
    .local v4, sampleView:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 3477
    .local v7, width:I
    mul-int/lit8 v6, v7, 0x8

    .line 3478
    .local v6, velocity:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25$1;->val$snapshot:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3479
    .local v1, _v:Landroid/view/View;
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25$1$2;

    invoke-direct {v9, p0, v1, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25$1$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25$1;Landroid/view/View;I)V

    int-to-long v10, v5

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3485
    const/16 v8, 0x32

    add-int/lit8 v9, v2, -0xa

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3486
    add-int/2addr v5, v2

    goto :goto_0

    .line 3493
    .end local v1           #_v:Landroid/view/View;
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25$1$3;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25$1$3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25$1;)V

    add-int/lit16 v10, v5, 0xe1

    int-to-long v10, v10

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3499
    return-void
.end method
