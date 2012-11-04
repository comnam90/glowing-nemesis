.class public Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "AllShareCastQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# instance fields
.field private isWfdEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mWfdManager:Lcom/samsung/wfd/WfdManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 63
    const v3, 0x7f0a0097

    const v4, 0x7f020179

    const v5, 0x7f020178

    const v6, 0x7f020177

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 28
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->isWfdEnabled:Z

    .line 29
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 36
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->handleStateChanged(I)I

    move-result v0

    return v0
.end method

.method private addActionsTo(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "intentFilter"

    .prologue
    .line 96
    const-string v0, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v0, "com.samsung.wfd.P2P_CONNECTION_TERMINATED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v0, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v0, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v0, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v0, "android.intent.action.WIFIDISPLAY_CONTROL_FROM_SERVICE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method private handleStateChanged(I)I
    .locals 3
    .parameter "state"

    .prologue
    .line 76
    const-string v0, "STATUSBAR-QuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WfdManager handleStateChanged state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    packed-switch p1, :pswitch_data_0

    .line 91
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 81
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 86
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 89
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private isWfdConnected()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 126
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 135
    const-string v1, "STATUSBAR-QuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWfdConnected >> false - getWfdState current state - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v3}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    :goto_0
    return v0

    .line 132
    :sswitch_0
    const-string v0, "STATUSBAR-QuickSettingButton"

    const-string v1, "isWfdConnected >> true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v0, 0x1

    goto :goto_0

    .line 128
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 110
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 112
    .local v0, intentFilter:Landroid/content/IntentFilter;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->addActionsTo(Landroid/content/IntentFilter;)V

    .line 113
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "wfd"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/wfd/WfdManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 116
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v1, :cond_0

    .line 117
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->handleStateChanged(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->setActivateStatus(I)V

    .line 119
    :cond_0
    return-void
.end method

.method public onClick(Z)V
    .locals 7
    .parameter "state"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 145
    const-string v2, "STATUSBAR-QuickSettingButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick() - state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mContext:Landroid/content/Context;

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 149
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 150
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v2, v5}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    const-string v2, "STATUSBAR-QuickSettingButton"

    const-string v3, "onClick(): AllShare state change is not allowed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-nez v2, :cond_1

    .line 157
    const-string v2, "STATUSBAR-QuickSettingButton"

    const-string v3, "mWfdManager is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->isWfdConnected()Z

    move-result v1

    .line 163
    .local v1, wfdState:Z
    if-eqz p1, :cond_3

    .line 164
    const-string v2, "STATUSBAR-QuickSettingButton"

    const-string v3, "WFD activate"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->isWfdEnabled:Z

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "show_dialog_once"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 168
    const-string v2, "tag_write_if_success"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    const/high16 v2, 0x1080

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 170
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 179
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->statusBarCollapse()V

    goto :goto_0

    .line 173
    :cond_3
    const-string v2, "STATUSBAR-QuickSettingButton"

    const-string v3, "WFD deactivate()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->isWfdEnabled:Z

    .line 175
    if-eqz v1, :cond_2

    .line 176
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v2, v5}, Lcom/samsung/wfd/WfdManager;->setWfdEnabledDialog(Z)Z

    goto :goto_1
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 185
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$AllShareCastSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method
