.class public Lcom/android/systemui/sapps/SAppsPanelUI;
.super Lcom/android/systemui/SystemUI;
.source "SAppsPanelUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/sapps/SAppsPanelUI$TouchOutsideListener;
    }
.end annotation


# static fields
.field private static final ACTION_PEN_INSERT:Ljava/lang/String; = "com.samsung.pen.INSERT"

.field private static final DEBUG:Z = false

.field private static final KEY_PEN_SETTINGS:Ljava/lang/String; = "pen_applications"

.field private static final KEY_QUICK_PANEL_LAUNCH:Ljava/lang/String; = "Quick_Panel_Launch"

.field private static final NOTIFICATION_ID:I = 0x1389

.field private static final PEN_SETTINGS_NONE:Ljava/lang/String; = "None"

.field private static final PEN_SETTINGS_TRAY:Ljava/lang/String; = "Shortcuts toolbar"

.field private static final TAG:Ljava/lang/String; = "SAppsPanelUI"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallScreenState:I

.field mCloseSAppsPanel:Ljava/lang/reflect/Method;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field mOpenSAppsPanel:Ljava/lang/reflect/Method;

.field private mPanelClosed:Z

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

.field mSAppsTrayClass:Ljava/lang/Class;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mCallScreenState:I

    .line 55
    iput-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mOpenSAppsPanel:Ljava/lang/reflect/Method;

    .line 56
    iput-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mCloseSAppsPanel:Ljava/lang/reflect/Method;

    .line 57
    iput-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsTrayClass:Ljava/lang/Class;

    .line 58
    iput-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 59
    iput-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mWindowManager:Landroid/view/IWindowManager;

    .line 60
    iput-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mNotificationManager:Landroid/app/NotificationManager;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mPanelClosed:Z

    .line 143
    new-instance v0, Lcom/android/systemui/sapps/SAppsPanelUI$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/sapps/SAppsPanelUI$1;-><init>(Lcom/android/systemui/sapps/SAppsPanelUI;)V

    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 177
    new-instance v0, Lcom/android/systemui/sapps/SAppsPanelUI$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/sapps/SAppsPanelUI$2;-><init>(Lcom/android/systemui/sapps/SAppsPanelUI;)V

    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/sapps/SAppsPanelUI;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/sapps/SAppsPanelUI;->launchSPenApps(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/sapps/SAppsPanelUI;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mCallScreenState:I

    return p1
.end method

.method private dimissKeyguard()V
    .locals 2

    .prologue
    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 265
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getNotificationMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "value"

    .prologue
    .line 341
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0a00c0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 343
    .local v2, msg:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    const-string v3, "None"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 344
    :cond_0
    const-string v3, "%s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0a00c1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 345
    :cond_1
    const-string v3, "Shortcuts toolbar"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 346
    const-string v3, "%s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0a00c2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 349
    :cond_2
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, component:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/sapps/SAppsPanel;->getApplicationName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, appName:Ljava/lang/String;
    const-string v3, "%s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private hideNotification()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x1389

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 338
    return-void
.end method

.method private isSecureKeyguard(Z)Z
    .locals 3
    .parameter "isKeyGuardLocked"

    .prologue
    .line 270
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 279
    :goto_0
    return v1

    .line 271
    :cond_0
    const/4 v1, 0x0

    .line 273
    .local v1, secure:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2}, Landroid/view/IWindowManager;->isKeyguardSecure()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 276
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private launchSPenApps(Landroid/content/Intent;)V
    .locals 14
    .parameter "penIntent"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 190
    const-string v10, "penInsert"

    invoke-virtual {p1, v10, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 191
    .local v8, penInsert:Z
    const-string v10, "isFactoryMode"

    invoke-virtual {p1, v10, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 192
    .local v4, isFactoryMode:Z
    const-string v10, "isScreenOn"

    invoke-virtual {p1, v10, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 193
    .local v7, isScreenOn:Z
    const-string v10, "isKeyguardLocked"

    invoke-virtual {p1, v10, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 194
    .local v5, isKeyguardLocked:Z
    const-string v10, "Quick_Panel_Launch"

    invoke-virtual {p1, v10, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 200
    .local v6, isQuickPanelLaunch:Z
    iget-object v10, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "pen_applications"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 202
    .local v9, value:Ljava/lang/String;
    if-eqz v8, :cond_1

    if-nez v6, :cond_1

    .line 204
    invoke-virtual {p0, v13}, Lcom/android/systemui/sapps/SAppsPanelUI;->closeSAppsPanel(Z)V

    .line 205
    invoke-direct {p0}, Lcom/android/systemui/sapps/SAppsPanelUI;->hideNotification()V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    if-nez v4, :cond_0

    .line 207
    if-nez v6, :cond_2

    .line 208
    invoke-direct {p0, v9}, Lcom/android/systemui/sapps/SAppsPanelUI;->getNotificationMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/systemui/sapps/SAppsPanelUI;->showNotification(Ljava/lang/String;)V

    .line 210
    :cond_2
    iget v10, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mCallScreenState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 212
    new-instance v0, Landroid/content/ComponentName;

    const-string v10, "com.diotek.mini_penmemo"

    const-string v11, "com.diotek.mini_penmemo.Mini_PenMemo_Service"

    invoke-direct {v0, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .local v0, component:Landroid/content/ComponentName;
    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 214
    .local v2, i:Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 216
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v2           #i:Landroid/content/Intent;
    :cond_3
    iget v10, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mCallScreenState:I

    if-nez v10, :cond_0

    invoke-direct {p0, v5}, Lcom/android/systemui/sapps/SAppsPanelUI;->isSecureKeyguard(Z)Z

    move-result v10

    if-nez v10, :cond_0

    .line 220
    if-nez v9, :cond_4

    .line 221
    const-string v10, "SAppsPanelUI"

    const-string v11, "Unable to get Pen Settings selection from DB for PEN Detachment"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 224
    :cond_4
    const-string v10, "None"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 225
    if-eqz v6, :cond_0

    .line 226
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.settings.PEN_SETTINGS"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v3, intent:Landroid/content/Intent;
    const v10, 0x10008000

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 228
    iget-object v10, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 230
    .end local v3           #intent:Landroid/content/Intent;
    :cond_5
    const-string v10, "Shortcuts toolbar"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 232
    if-eqz v5, :cond_6

    .line 233
    invoke-direct {p0}, Lcom/android/systemui/sapps/SAppsPanelUI;->dimissKeyguard()V

    .line 235
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/sapps/SAppsPanelUI;->openSAppsPanel()V

    goto :goto_0

    .line 238
    :cond_7
    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, component:[Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const/high16 v10, 0x1020

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 242
    aget-object v10, v0, v12

    aget-object v11, v0, v13

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    if-eqz v5, :cond_8

    .line 245
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    .line 246
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :cond_8
    :goto_1
    iget-object v10, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 247
    :catch_0
    move-exception v1

    .line 248
    .local v1, e:Landroid/os/RemoteException;
    const-string v10, "SAppsPanelUI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to dimiss keygaurd and launch activity :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private showNotification(Ljava/lang/String;)V
    .locals 9
    .parameter "notificationText"

    .prologue
    const v8, 0x7f0a00bf

    const/4 v7, 0x0

    .line 325
    new-instance v1, Landroid/app/Notification;

    const v3, 0x7f020051

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 327
    .local v1, notification:Landroid/app/Notification;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.pen.INSERT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 328
    .local v2, notificationIntent:Landroid/content/Intent;
    const-string v3, "Quick_Panel_Launch"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 329
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v3, v7, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 331
    .local v0, contentIntent:Landroid/app/PendingIntent;
    const/4 v3, 0x2

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 332
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, p1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 333
    iget-object v3, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v4, 0x1389

    invoke-virtual {v3, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 334
    return-void
.end method


# virtual methods
.method public closeSAppsPanel(Z)V
    .locals 3
    .parameter "animate"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v0}, Lcom/android/systemui/sapps/SAppsPanel;->getPanelVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mPanelClosed:Z

    if-nez v0, :cond_0

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mPanelClosed:Z

    .line 286
    if-nez p1, :cond_1

    .line 287
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/sapps/SAppsPanel;->setPanelVisibility(I)V

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsTrayClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mCloseSAppsPanel:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mCloseSAppsPanel:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    goto :goto_0

    .line 295
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    const/4 v0, 0x1

    .line 135
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 137
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    .line 141
    .local v0, isPortrait:Z
    :goto_0
    return-void

    .line 137
    .end local v0           #isPortrait:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openSAppsPanel()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 304
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v0}, Lcom/android/systemui/sapps/SAppsPanel;->getPanelVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/sapps/SAppsPanel;->setPanelVisibility(I)V

    .line 307
    iput-boolean v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mPanelClosed:Z

    .line 308
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsTrayClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mOpenSAppsPanel:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mOpenSAppsPanel:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v0, v3}, Lcom/android/systemui/sapps/SAppsPanel;->setFocusable(Z)V

    .line 318
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v0, v3}, Lcom/android/systemui/sapps/SAppsPanel;->setFocusableInTouchMode(Z)V

    .line 319
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v0}, Lcom/android/systemui/sapps/SAppsPanel;->requestFocus()Z

    .line 322
    :cond_1
    return-void

    .line 314
    :catch_0
    move-exception v0

    goto :goto_0

    .line 313
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public start()V
    .locals 7

    .prologue
    .line 79
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v5, 0x7f030008

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/sapps/SAppsPanel;

    iput-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    .line 82
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 83
    .local v3, res:Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/systemui/sapps/SAppsPanel;->setPanelVisibility(I)V

    .line 84
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    new-instance v5, Lcom/android/systemui/sapps/SAppsPanelUI$TouchOutsideListener;

    iget-object v6, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/sapps/SAppsPanelUI$TouchOutsideListener;-><init>(Lcom/android/systemui/sapps/SAppsPanelUI;Lcom/android/systemui/sapps/SAppsPanel;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/sapps/SAppsPanel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 85
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x7de

    const v5, 0x1c20100

    const/4 v6, -0x3

    invoke-direct {v2, v4, v5, v6}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 95
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x15

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 96
    const v4, 0x7f0c004a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 97
    const v4, 0x7f0c004b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 99
    const-string v4, "SAppsPanel"

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    const/16 v4, 0x31

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 103
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v4, v5, v2}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v4, p0}, Lcom/android/systemui/sapps/SAppsPanel;->setCallView(Lcom/android/systemui/sapps/SAppsPanelUI;)V

    .line 107
    :try_start_0
    const-string v4, "com.android.systemui.sapps.SAppsPanel"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsTrayClass:Ljava/lang/Class;

    .line 108
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsTrayClass:Ljava/lang/Class;

    const-string v5, "closeSAppsPanel"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mCloseSAppsPanel:Ljava/lang/reflect/Method;

    .line 109
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsTrayClass:Ljava/lang/Class;

    const-string v5, "openSAppsPanel"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mOpenSAppsPanel:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_0

    .line 117
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 118
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 120
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mWindowManager:Landroid/view/IWindowManager;

    if-nez v4, :cond_1

    .line 121
    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mWindowManager:Landroid/view/IWindowManager;

    .line 123
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v4, :cond_2

    .line 124
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    iput-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mNotificationManager:Landroid/app/NotificationManager;

    .line 125
    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "com.samsung.pen.INSERT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    return-void

    .line 110
    .end local v1           #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 112
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 113
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method
