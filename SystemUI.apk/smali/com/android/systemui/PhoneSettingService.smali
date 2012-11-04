.class public Lcom/android/systemui/PhoneSettingService;
.super Landroid/app/Service;
.source "PhoneSettingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/PhoneSettingService$1;,
        Lcom/android/systemui/PhoneSettingService$SettingMode;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "PhoneSettingService"


# instance fields
.field private final PHONE_SETTING:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 46
    const-string v0, "android.intent.action.PHONE_SETTING"

    iput-object v0, p0, Lcom/android/systemui/PhoneSettingService;->PHONE_SETTING:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private changePhoneSetting(Lcom/android/systemui/PhoneSettingService$SettingMode;Z)V
    .locals 2
    .parameter "mode"
    .parameter "enabled"

    .prologue
    .line 133
    sget-object v0, Lcom/android/systemui/PhoneSettingService$1;->$SwitchMap$com$android$systemui$PhoneSettingService$SettingMode:[I

    invoke-virtual {p1}, Lcom/android/systemui/PhoneSettingService$SettingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 135
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setAutoRotateMode(Z)V

    goto :goto_0

    .line 138
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setBluetoothMode(Z)V

    goto :goto_0

    .line 141
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setLocationMode(Z)V

    goto :goto_0

    .line 144
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setMobileDataMode(Z)V

    goto :goto_0

    .line 147
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setPowerSavingMode(Z)V

    goto :goto_0

    .line 150
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setSyncMode(Z)V

    goto :goto_0

    .line 153
    :pswitch_6
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setWifiMode(Z)V

    goto :goto_0

    .line 156
    :pswitch_7
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setDormantMode(Z)V

    goto :goto_0

    .line 159
    :pswitch_8
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setAllShareCastMode(Z)V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private setAllShareCastMode(Z)V
    .locals 7
    .parameter "enabled"

    .prologue
    const/4 v6, 0x0

    .line 283
    const-string v3, "PhoneSettingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAllShareCastMode : enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v0, 0x0

    .line 286
    .local v0, connected:Z
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    const-string v4, "wfd"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/wfd/WfdManager;

    .line 287
    .local v2, wfdManager:Lcom/samsung/wfd/WfdManager;
    if-eqz v2, :cond_0

    .line 288
    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 295
    :goto_0
    const-string v3, "PhoneSettingService"

    const-string v4, "setAllShareCastMode : disconnected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v0, 0x0

    .line 300
    :cond_0
    if-eqz p1, :cond_2

    .line 301
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "show_dialog_once"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 303
    const-string v3, "tag_write_if_success"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 304
    const/high16 v3, 0x1080

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 305
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 309
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 292
    :sswitch_0
    const-string v3, "PhoneSettingService"

    const-string v4, "setAllShareCastMode : connected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v0, 0x1

    goto :goto_0

    .line 306
    :cond_2
    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {v2, v6}, Lcom/samsung/wfd/WfdManager;->setWfdEnabledDialog(Z)Z

    goto :goto_1

    .line 288
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method private setAutoRotateMode(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 165
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "accelerometer_rotation"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 167
    .local v1, mode:Z
    :goto_0
    const-string v3, "PhoneSettingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAutoRotateMode : mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    if-eq v1, p1, :cond_0

    .line 170
    :try_start_0
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 171
    .local v2, wm:Landroid/view/IWindowManager;
    if-eqz p1, :cond_2

    .line 172
    invoke-interface {v2}, Landroid/view/IWindowManager;->thawRotation()V

    .line 180
    .end local v2           #wm:Landroid/view/IWindowManager;
    :cond_0
    :goto_1
    return-void

    .line 165
    .end local v1           #mode:Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 174
    .restart local v1       #mode:Z
    .restart local v2       #wm:Landroid/view/IWindowManager;
    :cond_2
    const/4 v3, -0x1

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 176
    .end local v2           #wm:Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .line 177
    .local v0, exc:Landroid/os/RemoteException;
    const-string v3, "PhoneSettingService"

    const-string v4, "Unable to save auto-rotate setting"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setBluetoothMode(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 183
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 184
    .local v0, bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 185
    const-string v1, "PhoneSettingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBluetoothMode : enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    if-eqz p1, :cond_1

    .line 187
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.systemui.statusbar.action.BLUETOOTH_ON"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

.method private setDormantMode(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 272
    const-string v3, "PhoneSettingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDormantMode : enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "dormant_switch_onoff"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    move v0, v2

    .line 275
    .local v0, mode:Z
    :goto_0
    if-eq v0, p1, :cond_0

    .line 276
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "dormant_switch_onoff"

    if-eqz p1, :cond_2

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 278
    iget-object v1, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.DORMANTMODE_SWITCH_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 280
    :cond_0
    return-void

    .end local v0           #mode:Z
    :cond_1
    move v0, v1

    .line 273
    goto :goto_0

    .restart local v0       #mode:Z
    :cond_2
    move v1, v2

    .line 276
    goto :goto_1
.end method

.method private setLocationMode(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 197
    iget-object v2, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "gps"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 199
    .local v1, mode:Z
    const-string v2, "PhoneSettingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLocationMode : mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    if-eq v1, p1, :cond_0

    .line 201
    iget-object v2, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "gps"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.GPS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 206
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private setMobileDataMode(Z)V
    .locals 7
    .parameter "enabled"

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 209
    iget-object v5, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    .line 211
    .local v0, airplaneMode:Z
    :goto_0
    if-ne v0, v4, :cond_2

    .line 212
    const-string v4, "PhoneSettingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMobileDataMode : airplaneMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    :goto_1
    return-void

    .end local v0           #airplaneMode:Z
    :cond_1
    move v0, v4

    .line 209
    goto :goto_0

    .line 216
    .restart local v0       #airplaneMode:Z
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    .line 217
    .local v3, simState:I
    if-eqz v3, :cond_3

    if-ne v3, v4, :cond_4

    .line 218
    :cond_3
    const-string v4, "PhoneSettingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMobileDataMode : simState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 222
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 224
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    .line 226
    .local v2, mode:Z
    const-string v4, "PhoneSettingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMobileDataMode : mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " enabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    if-eq v2, p1, :cond_0

    .line 228
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_1
.end method

.method private setPowerSavingMode(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 234
    const-string v1, "PhoneSettingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPowerSavingMode : enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v2, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "psm_switch"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 236
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 238
    return-void

    .line 235
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setSilentMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 241
    const-string v1, "PhoneSettingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSilentMode : mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v1, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 243
    .local v0, audioManager:Landroid/media/AudioManager;
    packed-switch p1, :pswitch_data_0

    .line 254
    :goto_0
    return-void

    .line 245
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 248
    :pswitch_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 251
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setSyncMode(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 257
    iget-object v2, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 258
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    .line 259
    .local v1, mode:Z
    const-string v2, "PhoneSettingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSyncMode : mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    if-eq v1, p1, :cond_0

    .line 261
    invoke-static {p1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 263
    :cond_0
    return-void
.end method

.method private setWifiMode(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 266
    const-string v1, "PhoneSettingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiMode : enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v1, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 268
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 269
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "PhoneSettingService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 58
    const-string v0, "PhoneSettingService"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 60
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 14
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 77
    const-string v11, "PhoneSettingService"

    const-string v12, "onStartCommand"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/PhoneSettingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    .line 80
    iget-object v11, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    .line 84
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.intent.action.PHONE_SETTING"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 85
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 86
    .local v3, extra:Landroid/os/Bundle;
    if-eqz v3, :cond_7

    .line 87
    const-string v11, "setting_value"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 88
    .local v9, phoneSetting:Ljava/lang/String;
    const-string v11, "PhoneSettingService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onStartCommand : phonesetting = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v2, 0x0

    .line 94
    .local v2, enabled:Z
    invoke-static {}, Lcom/android/systemui/PhoneSettingService$SettingMode;->values()[Lcom/android/systemui/PhoneSettingService$SettingMode;

    move-result-object v1

    .local v1, arr$:[Lcom/android/systemui/PhoneSettingService$SettingMode;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_7

    aget-object v10, v1, v4

    .line 95
    .local v10, s:Lcom/android/systemui/PhoneSettingService$SettingMode;
    invoke-virtual {v10}, Lcom/android/systemui/PhoneSettingService$SettingMode;->ordinal()I

    move-result v5

    .line 96
    .local v5, index:I
    invoke-virtual {v10}, Lcom/android/systemui/PhoneSettingService$SettingMode;->name()Ljava/lang/String;

    move-result-object v8

    .line 97
    .local v8, name:Ljava/lang/String;
    const/4 v7, 0x0

    .line 98
    .local v7, mode:I
    const/4 v0, 0x1

    .line 99
    .local v0, applicable:Z
    const-string v11, "Silent"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 100
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x30

    if-ne v11, v12, :cond_1

    .line 101
    const/4 v7, 0x0

    .line 109
    :goto_1
    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0, v7}, Lcom/android/systemui/PhoneSettingService;->setSilentMode(I)V

    .line 94
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x31

    if-ne v11, v12, :cond_2

    .line 103
    const/4 v7, 0x1

    goto :goto_1

    .line 104
    :cond_2
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x32

    if-ne v11, v12, :cond_3

    .line 105
    const/4 v7, 0x2

    goto :goto_1

    .line 107
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 113
    :cond_4
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x30

    if-ne v11, v12, :cond_5

    .line 114
    const/4 v2, 0x1

    .line 121
    :goto_3
    if-eqz v0, :cond_0

    .line 122
    invoke-direct {p0, v10, v2}, Lcom/android/systemui/PhoneSettingService;->changePhoneSetting(Lcom/android/systemui/PhoneSettingService$SettingMode;Z)V

    goto :goto_2

    .line 115
    :cond_5
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x31

    if-ne v11, v12, :cond_6

    .line 116
    const/4 v2, 0x0

    goto :goto_3

    .line 118
    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    .line 129
    .end local v0           #applicable:Z
    .end local v1           #arr$:[Lcom/android/systemui/PhoneSettingService$SettingMode;
    .end local v2           #enabled:Z
    .end local v3           #extra:Landroid/os/Bundle;
    .end local v4           #i$:I
    .end local v5           #index:I
    .end local v6           #len$:I
    .end local v7           #mode:I
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #phoneSetting:Ljava/lang/String;
    .end local v10           #s:Lcom/android/systemui/PhoneSettingService$SettingMode;
    :cond_7
    const/4 v11, 0x2

    return v11
.end method
