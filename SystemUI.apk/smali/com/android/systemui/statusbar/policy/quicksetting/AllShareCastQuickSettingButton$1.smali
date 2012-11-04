.class Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "AllShareCastQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, action:Ljava/lang/String;
    const-string v3, "STATUSBAR-QuickSettingButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string v3, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;

    const/4 v4, 0x4

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->handleStateChanged(I)I
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->setActivateStatus(I)V

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const-string v3, "com.samsung.wfd.P2P_CONNECTION_TERMINATED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 46
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->handleStateChanged(I)I
    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;I)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->setActivateStatus(I)V

    goto :goto_0

    .line 48
    :cond_2
    const-string v3, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    const-string v3, "wifi_p2p_state"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_3

    move v1, v2

    .line 54
    .local v1, wifiP2pEnabled:Z
    :goto_1
    if-eqz v1, :cond_4

    .line 55
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->handleStateChanged(I)I
    invoke-static {v3, v6}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->setActivateStatus(I)V

    goto :goto_0

    .line 50
    .end local v1           #wifiP2pEnabled:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 57
    .restart local v1       #wifiP2pEnabled:Z
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->handleStateChanged(I)I
    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;I)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method
