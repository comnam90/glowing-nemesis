.class public Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;
.super Lcom/android/systemui/statusbar/policy/KeyButtonView;
.source "QuickLaunchKeyButtonView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$2;,
        Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchObserver;,
        Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;
    }
.end annotation


# static fields
.field public static final ACTION_TOUCH_CAPTURE_BTN:Ljava/lang/String; = "android.intent.action.TOUCH_CAPTURE_BTN"

.field public static final DEBUG:Z = true

.field public static final SINGLE_SCREEN_CAPTURE_OFF:Ljava/lang/String; = "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

.field public static final SINGLE_SCREEN_CAPTURE_ON:Ljava/lang/String; = "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"

.field public static final TAG:Ljava/lang/String; = "StatusBar.QuickLaunchKeyButtonView"


# instance fields
.field mCaptureReceiver:Landroid/content/BroadcastReceiver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mQuickLaunchMode:I

.field private mQuickLaunchObserver:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchObserver;

.field private mResources:Landroid/content/res/Resources;

.field mScreenCaptureOn:Z

.field private mUseChinaQuickLaunch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mScreenCaptureOn:Z

    .line 277
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$1;-><init>(Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mResources:Landroid/content/res/Resources;

    .line 110
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchObserver;-><init>(Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchObserver:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchObserver;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mContentResolver:Landroid/content/ContentResolver;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->updateQuickLaunchKeyButton(I)V

    return-void
.end method

.method private onClickApplicationButton()V
    .locals 4

    .prologue
    .line 234
    const-string v2, "StatusBar.QuickLaunchKeyButtonView"

    const-string v3, "onClickApplicationButton"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 239
    const-string v2, "sec.android.intent.extra.LAUNCHER_ACTION"

    const-string v3, "com.android.launcher2.ALL_APPS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private onClickCameraButton()V
    .locals 5

    .prologue
    .line 265
    const-string v2, "StatusBar.QuickLaunchKeyButtonView"

    const-string v3, "onClickCameraButton"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const/high16 v2, 0x1020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 270
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.camera"

    const-string v4, "com.sec.android.app.camera.Camera"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 271
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private onClickQuickLauncherButton()V
    .locals 2

    .prologue
    .line 181
    const-string v0, "StatusBar.QuickLaunchKeyButtonView"

    const-string v1, "onClickQuickLauncherButton"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$2;->$SwitchMap$com$android$systemui$statusbar$policy$QuickLaunchKeyButtonView$QuickLaunchMode:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->valueOf(I)Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 198
    :goto_0
    return-void

    .line 184
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->onClickScreenCaptureButton()V

    goto :goto_0

    .line 187
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->onClickApplicationButton()V

    goto :goto_0

    .line 190
    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->onClickSearchButton()V

    goto :goto_0

    .line 193
    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->onClickCameraButton()V

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onClickScreenCaptureButton()V
    .locals 3

    .prologue
    .line 212
    const-string v1, "StatusBar.QuickLaunchKeyButtonView"

    const-string v2, "onClickScreenCaptureButton"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mScreenCaptureOn:Z

    if-nez v1, :cond_0

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TOUCH_CAPTURE_BTN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, mIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onClickSearchButton()V
    .locals 5

    .prologue
    .line 247
    const-string v2, "StatusBar.QuickLaunchKeyButtonView"

    const-string v3, "onClickSearchButton"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x3000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 252
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mUseChinaQuickLaunch:Z

    if-eqz v2, :cond_0

    .line 253
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.quicksearchbox"

    const-string v4, "com.android.quicksearchbox.SearchActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 258
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 262
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 255
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.googlequicksearchbox"

    const-string v4, "com.google.android.googlequicksearchbox.SearchActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 260
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private onLongClickQuickLauncherButton()Z
    .locals 2

    .prologue
    .line 201
    const-string v0, "StatusBar.QuickLaunchKeyButtonView"

    const-string v1, "onLongClickQuickLauncherButton"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$2;->$SwitchMap$com$android$systemui$statusbar$policy$QuickLaunchKeyButtonView$QuickLaunchMode:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->valueOf(I)Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 207
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 204
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->onLongClickScreenCaptureButton()V

    .line 205
    const/4 v0, 0x1

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private onLongClickScreenCaptureButton()V
    .locals 4

    .prologue
    .line 220
    const-string v2, "StatusBar.QuickLaunchKeyButtonView"

    const-string v3, "onLongClickScreenCaptureButton"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mScreenCaptureOn:Z

    if-nez v2, :cond_0

    .line 231
    :goto_0
    return-void

    .line 224
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 225
    .local v1, i:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 226
    const-string v2, "com.diotek.screen_capture"

    const-string v3, "com.diotek.screen_capture.CaptureService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    .end local v1           #i:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateQuickLaunchKeyButton(I)V
    .locals 6
    .parameter "mode"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 149
    const-string v0, "StatusBar.QuickLaunchKeyButtonView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateQuickLaunchKeyButton : mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$2;->$SwitchMap$com$android$systemui$statusbar$policy$QuickLaunchKeyButtonView$QuickLaunchMode:[I

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->valueOf(I)Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 175
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setVisibility(I)V

    .line 178
    :goto_0
    return-void

    .line 152
    :pswitch_0
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setVisibility(I)V

    goto :goto_0

    .line 155
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setSoundEffectsEnabled(Z)V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f020135

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setVisibility(I)V

    goto :goto_0

    .line 160
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setSoundEffectsEnabled(Z)V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f020128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setVisibility(I)V

    goto :goto_0

    .line 165
    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setSoundEffectsEnabled(Z)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f020142

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setVisibility(I)V

    goto :goto_0

    .line 170
    :pswitch_4
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setSoundEffectsEnabled(Z)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f020132

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setVisibility(I)V

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getQuickLaunchMode()I
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "quick_launch_app"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isQuickLaunchNoneMode()Z
    .locals 2

    .prologue
    .line 145
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->valueOf(I)Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->NONE:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScreenCaptureQuickLaunchMode()Z
    .locals 2

    .prologue
    .line 141
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->valueOf(I)Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->SCREENCAPTURE:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->onClickQuickLauncherButton()V

    .line 129
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 116
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->onFinishInflate()V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "quick_launch_app"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchObserver:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->getQuickLaunchMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I

    .line 121
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->updateQuickLaunchKeyButton(I)V

    .line 122
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 124
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->onLongClickQuickLauncherButton()Z

    move-result v0

    return v0
.end method
