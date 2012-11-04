.class public Lcom/android/systemui/statusbar/tablet/NotificationPanel;
.super Landroid/widget/RelativeLayout;
.source "NotificationPanel.java"

# interfaces
.implements Lcom/android/systemui/statusbar/tablet/StatusBarPanel;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final NUMBER_OF_VISIBLE_QUICK_SETTING_BUTTON:I = 0x5

.field static final PANEL_FADE_DURATION:I = 0x96

.field static QUICK_SETTINGS_START_OFFSET:I = 0x0

.field static final TAG:Ljava/lang/String; = "Tablet/NotificationPanel"

.field private static final TOUCHEVENT_TO_NOTIFICATION:I = 0x2

.field private static final TOUCHEVENT_TO_ONGOING:I = 0x1

.field static sAccelerateInterpolator:Landroid/view/animation/Interpolator;

.field static sDecelerateInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private eventToWhere:I

.field private latestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

.field mBrightness:Lcom/android/systemui/statusbar/policy/BrightnessController;

.field mChoreo:Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;

.field mClearButton:Landroid/view/View;

.field private mClearButtonListener:Landroid/view/View$OnClickListener;

.field private mClock:Landroid/view/View;

.field mContentArea:Landroid/graphics/Rect;

.field mContentFrame:Landroid/view/ViewGroup;

.field mContentFrameMissingTranslation:F

.field mContentParent:Landroid/view/ViewGroup;

.field public mContext:Landroid/content/Context;

.field private mExpandHelper:Lcom/android/systemui/ExpandHelper;

.field mHasClearableNotifications:Z

.field mLinkToSettings:Landroid/view/View;

.field mNetworkText:Landroid/widget/TextView;

.field mNotificationButton:Landroid/view/View;

.field mNotificationCount:I

.field private mNotificationExpandHelper:Lcom/android/systemui/ExpandHelper;

.field mNotificationScroller:Landroid/view/View;

.field private mOngoingExpandHelper:Lcom/android/systemui/ExpandHelper;

.field private mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mQuickSettingScroller:Landroid/view/View;

.field mQuickSettingView:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

.field mSettingsButton:Landroid/view/View;

.field mSettingsView:Landroid/view/View;

.field mShowing:Z

.field mTitleArea:Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;

.field private notificationItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field private onGoingItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->sAccelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 87
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->sDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 98
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->QUICK_SETTINGS_START_OFFSET:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mHasClearableNotifications:Z

    .line 75
    iput v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationCount:I

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentArea:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;-><init>(Lcom/android/systemui/statusbar/tablet/NotificationPanel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mChoreo:Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;

    .line 209
    new-instance v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel$2;-><init>(Lcom/android/systemui/statusbar/tablet/NotificationPanel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mClearButtonListener:Landroid/view/View$OnClickListener;

    .line 250
    new-instance v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel$3;-><init>(Lcom/android/systemui/statusbar/tablet/NotificationPanel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 120
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContext:Landroid/content/Context;

    .line 121
    return-void
.end method


# virtual methods
.method addSettingsView()V
    .locals 4

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 429
    .local v0, infl:Landroid/view/LayoutInflater;
    const v1, 0x7f030028

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    .line 430
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 431
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 432
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 303
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 304
    .local v1, y:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 305
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 307
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getClearButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mClearButton:Landroid/view/View;

    return-object v0
.end method

.method public isInContentArea(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 410
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 412
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 413
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 415
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentArea:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 416
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mShowing:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/16 v5, 0x50

    .line 186
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 188
    .local v1, minHeight:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 191
    .local v0, maxHeight:I
    sget-boolean v2, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v2, :cond_0

    .line 192
    const v2, 0x7f0d00e0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->onGoingItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 193
    const v2, 0x7f0d00e3

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->notificationItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 194
    new-instance v2, Lcom/android/systemui/ExpandHelper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->onGoingItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/android/systemui/ExpandHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mOngoingExpandHelper:Lcom/android/systemui/ExpandHelper;

    .line 195
    new-instance v2, Lcom/android/systemui/ExpandHelper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->notificationItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/android/systemui/ExpandHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationExpandHelper:Lcom/android/systemui/ExpandHelper;

    .line 196
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mOngoingExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v2, p0}, Lcom/android/systemui/ExpandHelper;->setEventSource(Landroid/view/View;)V

    .line 197
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v2, p0}, Lcom/android/systemui/ExpandHelper;->setEventSource(Landroid/view/View;)V

    .line 198
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mOngoingExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v2, v5}, Lcom/android/systemui/ExpandHelper;->setGravity(I)V

    .line 199
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v2, v5}, Lcom/android/systemui/ExpandHelper;->setGravity(I)V

    .line 207
    :goto_0
    return-void

    .line 201
    :cond_0
    const v2, 0x7f0d0067

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->latestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 202
    new-instance v2, Lcom/android/systemui/ExpandHelper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->latestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/android/systemui/ExpandHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    .line 203
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v2, p0}, Lcom/android/systemui/ExpandHelper;->setEventSource(Landroid/view/View;)V

    .line 204
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v2, v5}, Lcom/android/systemui/ExpandHelper;->setGravity(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 330
    sget-boolean v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mTitleArea:Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;

    if-ne p1, v0, :cond_1

    .line 331
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->swapPanels()V

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mLinkToSettings:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 335
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 340
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 129
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 131
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setWillNotDraw(Z)V

    .line 133
    const v3, 0x7f0d005a

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    .line 134
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->bringToFront()V

    .line 135
    const v3, 0x7f0d00a1

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mTitleArea:Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;

    .line 136
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mTitleArea:Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;

    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->setPanel(Lcom/android/systemui/statusbar/tablet/NotificationPanel;)V

    .line 140
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 145
    .local v2, useStatusBarWorldClock:Z
    :goto_0
    if-eqz v2, :cond_0

    .line 146
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mTitleArea:Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;

    const v4, 0x7f0d0035

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mClock:Landroid/view/View;

    .line 147
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mClock:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/statusbar/tablet/NotificationPanel$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel$1;-><init>(Lcom/android/systemui/statusbar/tablet/NotificationPanel;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    :cond_0
    const v3, 0x7f0d0040

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsButton:Landroid/view/View;

    .line 157
    const v3, 0x7f0d00a8

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationButton:Landroid/view/View;

    .line 159
    const v3, 0x7f0d00a0

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationScroller:Landroid/view/View;

    .line 160
    const v3, 0x7f0d009f

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    .line 161
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrameMissingTranslation:F

    .line 164
    const v3, 0x7f0d0041

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mClearButton:Landroid/view/View;

    .line 165
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mClearButton:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mClearButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mShowing:Z

    .line 169
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 171
    .local v0, context:Landroid/content/Context;
    sget-boolean v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v3, :cond_1

    .line 172
    new-instance v4, Lcom/android/systemui/statusbar/policy/BrightnessController;

    const v3, 0x7f0d00ba

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-direct {v4, v0, v3}, Lcom/android/systemui/statusbar/policy/BrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mBrightness:Lcom/android/systemui/statusbar/policy/BrightnessController;

    .line 174
    const v3, 0x7f0d00d6

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mQuickSettingScroller:Landroid/view/View;

    .line 175
    const v3, 0x7f0d00d7

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mQuickSettingView:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    .line 176
    const v3, 0x7f0d00be

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mLinkToSettings:Landroid/view/View;

    .line 177
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mLinkToSettings:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    const v3, 0x7f0d009c

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNetworkText:Landroid/widget/TextView;

    .line 182
    :cond_1
    return-void

    .line 142
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #useStatusBarWorldClock:Z
    :catch_0
    move-exception v1

    .line 143
    .local v1, ex:Landroid/content/res/Resources$NotFoundException;
    const/4 v2, 0x0

    .restart local v2       #useStatusBarWorldClock:Z
    goto/16 :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 571
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 572
    .local v0, cancellation:Landroid/view/MotionEvent;
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 575
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 577
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->isUnsecureKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 578
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->pokeWakelock()V

    .line 584
    :cond_1
    sget-boolean v5, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v5, :cond_6

    .line 585
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mOngoingExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v5, p1}, Lcom/android/systemui/ExpandHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v5, p1}, Lcom/android/systemui/ExpandHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v1, v3

    .line 588
    .local v1, intercept:Z
    :cond_3
    if-eqz v1, :cond_4

    .line 589
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mOngoingExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v5, p1}, Lcom/android/systemui/ExpandHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_0
    iput v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->eventToWhere:I

    .line 592
    iget v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->eventToWhere:I

    packed-switch v3, :pswitch_data_0

    :cond_4
    :goto_1
    move v2, v1

    .line 607
    .end local v1           #intercept:Z
    .local v2, intercept:I
    :goto_2
    return v2

    .end local v2           #intercept:I
    .restart local v1       #intercept:Z
    :cond_5
    move v3, v4

    .line 589
    goto :goto_0

    .line 594
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->onGoingItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 597
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->notificationItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 603
    .end local v1           #intercept:Z
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v4, p1}, Lcom/android/systemui/ExpandHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    move v1, v3

    .line 604
    .restart local v1       #intercept:Z
    :cond_8
    if-eqz v1, :cond_9

    .line 605
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->latestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_9
    move v2, v1

    .line 607
    .restart local v2       #intercept:I
    goto :goto_2

    .line 592
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 614
    const/4 v0, 0x0

    .line 616
    .local v0, handled:Z
    sget-boolean v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v3, :cond_4

    .line 617
    iget v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->eventToWhere:I

    packed-switch v3, :pswitch_data_0

    .line 632
    :goto_0
    return v0

    .line 619
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mOngoingExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v3, p1}, Lcom/android/systemui/ExpandHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v2

    .line 621
    :goto_1
    goto :goto_0

    :cond_1
    move v0, v1

    .line 619
    goto :goto_1

    .line 623
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v3, p1}, Lcom/android/systemui/ExpandHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v0, v2

    :goto_2
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    .line 628
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v3, p1}, Lcom/android/systemui/ExpandHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    move v0, v2

    :goto_3
    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_3

    .line 617
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "vis"

    .prologue
    const/4 v2, 0x0

    .line 275
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 277
    if-eqz p2, :cond_1

    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->removeSettingsView()V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationScroller:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationScroller:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationScroller:Landroid/view/View;

    invoke-virtual {v0, v2, v2}, Landroid/view/View;->scrollTo(II)V

    .line 282
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->updatePanelModeButtons()V

    .line 286
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v0, :cond_2

    .line 287
    if-nez p2, :cond_3

    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNetworkText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 295
    :cond_2
    :goto_0
    return-void

    .line 290
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNetworkText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 291
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mQuickSettingScroller:Landroid/view/View;

    invoke-virtual {v0, v2, v2}, Landroid/view/View;->scrollTo(II)V

    goto :goto_0
.end method

.method removeSettingsView()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    .line 424
    :cond_0
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    .line 125
    return-void
.end method

.method public setClearable(Z)V
    .locals 0
    .parameter "clearable"

    .prologue
    .line 397
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mHasClearableNotifications:Z

    .line 398
    return-void
.end method

.method public setContentFrameVisible(ZZ)V
    .locals 0
    .parameter "showing"
    .parameter "animate"

    .prologue
    .line 349
    return-void
.end method

.method public setNotificationCount(I)V
    .locals 0
    .parameter "n"

    .prologue
    .line 345
    iput p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationCount:I

    .line 346
    return-void
.end method

.method public setQuickSettingsStartOffset()V
    .locals 3

    .prologue
    .line 562
    sget v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->QUICK_SETTINGS_START_OFFSET:I

    if-nez v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mQuickSettingView:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mQuickSettingView:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    sput v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->QUICK_SETTINGS_START_OFFSET:I

    .line 566
    :cond_0
    return-void
.end method

.method public setSettingsEnabled(Z)V
    .locals 2
    .parameter "settingsEnabled"

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 638
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsButton:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 640
    :cond_0
    return-void

    .line 638
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public show(ZZ)V
    .locals 4
    .parameter "show"
    .parameter "animate"

    .prologue
    const/4 v1, 0x0

    .line 220
    if-eqz p2, :cond_3

    .line 221
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mShowing:Z

    if-eq v2, p1, :cond_0

    .line 222
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mShowing:Z

    .line 223
    if-eqz p1, :cond_2

    .line 224
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setVisibility(I)V

    .line 227
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 239
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getMiniConPile()Landroid/view/ViewGroup;

    move-result-object v0

    .line 240
    .local v0, miniConPile:Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 241
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 244
    :cond_1
    return-void

    .line 230
    .end local v0           #miniConPile:Landroid/view/ViewGroup;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mChoreo:Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->startAnimation(Z)V

    goto :goto_0

    .line 234
    :cond_3
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mShowing:Z

    .line 235
    if-eqz p1, :cond_4

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public swapPanels()V
    .locals 6

    .prologue
    .line 353
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->addSettingsView()V

    .line 355
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    .line 356
    .local v2, toShow:Landroid/view/View;
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationScroller:Landroid/view/View;

    .line 361
    .local v1, toHide:Landroid/view/View;
    :goto_0
    const-string v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 363
    .local v0, a:Landroid/animation/Animator;
    new-instance v3, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;-><init>(Lcom/android/systemui/statusbar/tablet/NotificationPanel;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 383
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 384
    return-void

    .line 358
    .end local v0           #a:Landroid/animation/Animator;
    .end local v1           #toHide:Landroid/view/View;
    .end local v2           #toShow:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationScroller:Landroid/view/View;

    .line 359
    .restart local v2       #toShow:Landroid/view/View;
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    .restart local v1       #toHide:Landroid/view/View;
    goto :goto_0

    .line 361
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public updateClearButton()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 387
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    if-eqz v2, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mHasClearableNotifications:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationScroller:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 392
    .local v0, showX:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->getClearButton()Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 394
    .end local v0           #showX:Z
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 388
    goto :goto_0

    .line 392
    .restart local v0       #showX:Z
    :cond_2
    const/4 v1, 0x4

    goto :goto_1
.end method

.method public updatePanelModeButtons()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 401
    sget-boolean v2, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-nez v2, :cond_0

    .line 402
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 403
    .local v0, settingsVisible:Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsButton:Landroid/view/View;

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 404
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationButton:Landroid/view/View;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 406
    .end local v0           #settingsVisible:Z
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 402
    goto :goto_0

    .restart local v0       #settingsVisible:Z
    :cond_2
    move v2, v3

    .line 403
    goto :goto_1

    :cond_3
    move v1, v3

    .line 404
    goto :goto_2
.end method
