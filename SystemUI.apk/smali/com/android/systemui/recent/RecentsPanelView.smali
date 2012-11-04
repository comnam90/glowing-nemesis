.class public Lcom/android/systemui/recent/RecentsPanelView;
.super Landroid/widget/FrameLayout;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/systemui/recent/RecentsCallback;
.implements Lcom/android/systemui/statusbar/tablet/StatusBarPanel;
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;,
        Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;,
        Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;,
        Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;,
        Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;,
        Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;,
        Lcom/android/systemui/recent/RecentsPanelView$OnLongClickDelegate;,
        Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;,
        Lcom/android/systemui/recent/RecentsPanelView$OnRecentsPanelVisibilityChangedListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final INTENT_ACTION_TASK_MANAGER:Ljava/lang/String; = "com.sec.android.app.controlpanel.MAIN"

.field static final TAG:Ljava/lang/String; = "RecentsPanelView"


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

.field private mChoreo:Lcom/android/systemui/recent/Choreographer;

.field private mContext:Landroid/content/Context;

.field private mFirstScreenful:Z

.field private mFitThumbnailToXY:Z

.field mHideRecentsAfterThumbnailScaleUpStarted:Z

.field private mHighEndGfx:Z

.field private mIsTaskManagerInstalled:Z

.field private mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

.field private mMultiWindowEnabled:Z

.field private mNoRecentApp:Landroid/widget/TextView;

.field private mNumItemsWaitingForThumbnailsAndIcons:I

.field mPlaceholderThumbnail:Landroid/widget/ImageView;

.field private mPopup:Landroid/widget/PopupMenu;

.field private mPreloadTasksRunnable:Ljava/lang/Runnable;

.field private mReadyToShow:Z

.field private mRecentItemLayoutId:I

.field private mRecentTaskDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentTasksDirty:Z

.field private mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

.field private mRecentsContainer:Landroid/view/ViewGroup;

.field private mRecentsGoogleButton:Landroid/view/View;

.field private mRecentsLaunchButton:Landroid/view/View;

.field private mRecentsNoApps:Landroid/view/View;

.field private mRecentsRemoveAllButton:Landroid/view/View;

.field private mRecentsScrim:Landroid/view/View;

.field private mShowRecentGoogleNowButton:Z

.field private mShowRecentRemoveAllButton:Z

.field private mShowing:Z

.field private mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

.field mThumbnailScaleUpStarted:Z

.field private mThumbnailWidth:I

.field mTransitionBg:Landroid/view/View;

.field private mUseTouchWizGUI:Z

.field mVisibilityChangedListener:Lcom/android/systemui/recent/RecentsPanelView$OnRecentsPanelVisibilityChangedListener;

.field private mWaitingToShow:Z

.field private mWaitingToShowAnimated:Z

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 265
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recent/RecentsPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 266
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 269
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksDirty:Z

    .line 121
    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFirstScreenful:Z

    .line 140
    iput-boolean v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mMultiWindowEnabled:Z

    .line 270
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    .line 271
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->updateValuesFromResources()V

    .line 273
    sget-object v2, Lcom/android/systemui/R$styleable;->RecentsPanelView:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 276
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentItemLayoutId:I

    .line 277
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 281
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mUseTouchWizGUI:Z

    .line 282
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentRemoveAllButton:Z

    .line 283
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentGoogleNowButton:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->isTaskManagerInstalled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    .line 294
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/multiwindow/Utilities;->isMultiWindowEnabled(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mMultiWindowEnabled:Z

    .line 297
    return-void

    .line 284
    :catch_0
    move-exception v1

    .line 285
    .local v1, ex:Landroid/content/res/Resources$NotFoundException;
    iput-boolean v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mUseTouchWizGUI:Z

    .line 286
    iput-boolean v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentRemoveAllButton:Z

    .line 287
    iput-boolean v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentGoogleNowButton:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentsPanelView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentItemLayoutId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/recent/RecentsPanelView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/recent/RecentsPanelView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mHighEndGfx:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/recent/RecentsPanelView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView;->startApplicationDetailsActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/statusbar/BaseStatusBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/recent/RecentsPanelView;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentTasksLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recent/RecentsPanelView;->updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recent/RecentsPanelView;->updateIcon(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    return-void
.end method

.method static synthetic access$510(Lcom/android/systemui/recent/RecentsPanelView;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mNumItemsWaitingForThumbnailsAndIcons:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mNumItemsWaitingForThumbnailsAndIcons:I

    return v0
.end method

.method private createCustomAnimations(Landroid/animation/LayoutTransition;)V
    .locals 3
    .parameter "transitioner"

    .prologue
    .line 683
    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 684
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 685
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 686
    return-void
.end method

.method private isTaskManagerInstalled()Z
    .locals 5

    .prologue
    .line 1168
    const/4 v3, 0x0

    .line 1169
    .local v3, retVal:Z
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1170
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.controlpanel.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1171
    .local v0, intent:Landroid/content/Intent;
    const/high16 v4, 0x1

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1173
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    .line 1175
    :cond_0
    return v3
.end method

.method private pointInside(IILandroid/view/View;)Z
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "v"

    .prologue
    .line 319
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 320
    .local v1, l:I
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v2

    .line 321
    .local v2, r:I
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 322
    .local v3, t:I
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 323
    .local v0, b:I
    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    if-lt p2, v3, :cond_0

    if-ge p2, v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private refreshRecentTasksList(Ljava/util/ArrayList;Z)V
    .locals 2
    .parameter
    .parameter "firstScreenful"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, recentTasksList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const/4 v1, 0x1

    .line 813
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksDirty:Z

    if-eqz v0, :cond_0

    .line 814
    if-eqz p1, :cond_1

    .line 815
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFirstScreenful:Z

    .line 816
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView;->onTasksLoaded(Ljava/util/ArrayList;)V

    .line 821
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksDirty:Z

    .line 823
    :cond_0
    return-void

    .line 818
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFirstScreenful:Z

    .line 819
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->loadTasksInBackground()V

    goto :goto_0
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "reason"

    .prologue
    .line 357
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 360
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showIfReady()V
    .locals 4

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingToShow:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mReadyToShow:Z

    if-eqz v0, :cond_0

    .line 352
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingToShowAnimated:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZZLjava/util/ArrayList;Z)V

    .line 354
    :cond_0
    return-void
.end method

.method private startApplicationDetailsActivity(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 1008
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1010
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1011
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1012
    return-void
.end method

.method private updateIcon(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 3
    .parameter "h"
    .parameter "icon"
    .parameter "show"
    .parameter "anim"

    .prologue
    .line 689
    if-eqz p2, :cond_1

    .line 690
    iget-object v0, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 691
    if-eqz p3, :cond_1

    iget-object v0, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 692
    if-eqz p4, :cond_0

    .line 693
    iget-object v0, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const v2, 0x7f04000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 696
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 699
    :cond_1
    return-void
.end method

.method private updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V
    .locals 5
    .parameter "h"
    .parameter "thumbnail"
    .parameter "show"
    .parameter "anim"

    .prologue
    .line 702
    if-eqz p2, :cond_4

    .line 706
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 710
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 713
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFitThumbnailToXY:Z

    if-eqz v2, :cond_5

    .line 714
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 723
    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    .line 724
    if-eqz p4, :cond_2

    .line 725
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const v4, 0x7f04000f

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 728
    :cond_2
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 730
    :cond_3
    iput-object p2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    .line 732
    :cond_4
    return-void

    .line 716
    :cond_5
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 717
    .local v1, scaleMatrix:Landroid/graphics/Matrix;
    iget v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mThumbnailWidth:I

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 718
    .local v0, scale:F
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 719
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 720
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method private updateUiElements(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "config"

    .prologue
    const/4 v4, 0x0

    .line 853
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 855
    .local v0, items:I
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    if-lez v0, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 858
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 860
    .local v1, numRecentApps:I
    if-nez v1, :cond_1

    .line 861
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 867
    .local v2, recentAppsAccessibilityDescription:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 868
    return-void

    .line 855
    .end local v1           #numRecentApps:I
    .end local v2           #recentAppsAccessibilityDescription:Ljava/lang/String;
    :cond_0
    const/16 v3, 0x8

    goto :goto_0

    .line 864
    .restart local v1       #numRecentApps:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v5, 0x7f0e

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v3, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #recentAppsAccessibilityDescription:Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public clearRecentTasksList()V
    .locals 1

    .prologue
    .line 799
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelLoadingThumbnailsAndIcons()V

    .line 801
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 802
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->notifyDataSetInvalidated()V

    .line 803
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksDirty:Z

    .line 805
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 467
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->hide(Z)V

    .line 468
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 515
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 516
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 517
    .local v1, y:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 518
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 520
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getFirstScreenful()Z
    .locals 1

    .prologue
    .line 849
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFirstScreenful:Z

    return v0
.end method

.method public getRecentTasksList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 845
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public handleLongPress(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .parameter "selectedView"
    .parameter "anchorView"
    .parameter "thumbnailView"

    .prologue
    .line 1032
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_0

    .line 1065
    .end local p2
    :goto_0
    return-void

    .line 1034
    .restart local p2
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1035
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    if-nez p2, :cond_1

    move-object p2, p1

    .end local p2
    :cond_1
    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1037
    .local v0, popup:Landroid/widget/PopupMenu;
    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    .line 1038
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f100001

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1039
    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recent/RecentsPanelView$3;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1058
    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$4;

    invoke-direct {v1, p0, p3}, Lcom/android/systemui/recent/RecentsPanelView$4;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 1064
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0
.end method

.method public handleOnClick(Landroid/view/View;)V
    .locals 23
    .parameter "view"

    .prologue
    .line 873
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 874
    .local v10, holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    iget-object v4, v10, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    .line 875
    .local v4, ad:Lcom/android/systemui/recent/TaskDescription;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 876
    .local v8, context:Landroid/content/Context;
    const-string v19, "activity"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 878
    .local v5, am:Landroid/app/ActivityManager;
    iget-object v7, v10, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    .line 880
    .local v7, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    iget-object v0, v10, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getWidth()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    iget-object v0, v10, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getHeight()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 882
    const/16 v17, 0x0

    .line 889
    .local v17, usingDrawingCache:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mPlaceholderThumbnail:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 890
    const v19, 0x7f0d0071

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mPlaceholderThumbnail:Landroid/widget/ImageView;

    .line 893
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mTransitionBg:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 894
    const v19, 0x7f0d0070

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mTransitionBg:Landroid/view/View;

    .line 896
    const-string v19, "window"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v18

    .line 899
    .local v18, wm:Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/view/IWindowManager;->hasSystemNavBar()Z

    move-result v19

    if-nez v19, :cond_1

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mTransitionBg:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 902
    .local v12, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x105000a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 904
    .local v16, statusBarHeight:I
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v16

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mTransitionBg:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    .end local v12           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v16           #statusBarHeight:I
    .end local v18           #wm:Landroid/view/IWindowManager;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recent/RecentsPanelView;->mPlaceholderThumbnail:Landroid/widget/ImageView;

    .line 913
    .local v14, placeholderThumbnail:Landroid/widget/ImageView;
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mHideRecentsAfterThumbnailScaleUpStarted:Z

    .line 914
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 915
    if-nez v17, :cond_4

    .line 916
    invoke-virtual {v14, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 921
    :goto_2
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 922
    .local v15, r:Landroid/graphics/Rect;
    iget-object v0, v10, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 924
    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 925
    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 927
    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZZ)V

    .line 929
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mThumbnailScaleUpStarted:Z

    .line 930
    iget-object v0, v10, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    new-instance v22, Lcom/android/systemui/recent/RecentsPanelView$2;

    invoke-direct/range {v22 .. v23}, Lcom/android/systemui/recent/RecentsPanelView$2;-><init>(Lcom/android/systemui/recent/RecentsPanelView;)V

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-static {v0, v7, v1, v2, v3}, Landroid/app/ActivityOptions;->makeDelayedThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v13

    .line 943
    .local v13, opts:Landroid/app/ActivityOptions;
    iget v0, v4, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    move/from16 v19, v0

    if-ltz v19, :cond_5

    .line 945
    iget v0, v4, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    move/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual {v13}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v21

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v5, v0, v1, v2}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 955
    :goto_3
    if-eqz v17, :cond_2

    .line 956
    iget-object v0, v10, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 958
    :cond_2
    return-void

    .line 884
    .end local v13           #opts:Landroid/app/ActivityOptions;
    .end local v14           #placeholderThumbnail:Landroid/widget/ImageView;
    .end local v15           #r:Landroid/graphics/Rect;
    .end local v17           #usingDrawingCache:Z
    :cond_3
    iget-object v0, v10, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 885
    iget-object v0, v10, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 886
    const/16 v17, 0x1

    .restart local v17       #usingDrawingCache:Z
    goto/16 :goto_0

    .line 907
    .restart local v18       #wm:Landroid/view/IWindowManager;
    :catch_0
    move-exception v9

    .line 908
    .local v9, e:Landroid/os/RemoteException;
    const-string v19, "RecentsPanelView"

    const-string v20, "Failing checking whether status bar is visible"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 918
    .end local v9           #e:Landroid/os/RemoteException;
    .end local v18           #wm:Landroid/view/IWindowManager;
    .restart local v14       #placeholderThumbnail:Landroid/widget/ImageView;
    :cond_4
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 919
    .local v6, b2:Landroid/graphics/Bitmap;
    invoke-virtual {v14, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 948
    .end local v6           #b2:Landroid/graphics/Bitmap;
    .restart local v13       #opts:Landroid/app/ActivityOptions;
    .restart local v15       #r:Landroid/graphics/Rect;
    :cond_5
    iget-object v11, v4, Lcom/android/systemui/recent/TaskDescription;->intent:Landroid/content/Intent;

    .line 949
    .local v11, intent:Landroid/content/Intent;
    const v19, 0x10104000

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 953
    invoke-virtual {v13}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v11, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_3
.end method

.method public handleSwipe(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 976
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    iget-object v0, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    .line 977
    .local v0, ad:Lcom/android/systemui/recent/TaskDescription;
    if-nez v0, :cond_1

    .line 978
    const-string v2, "RecentsPanelView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not able to find activity description for swiped task; view="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :cond_0
    :goto_0
    return-void

    .line 983
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 988
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 989
    invoke-virtual {p0, v6}, Lcom/android/systemui/recent/RecentsPanelView;->hide(Z)V

    .line 994
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 996
    .local v1, am:Landroid/app/ActivityManager;
    if-eqz v1, :cond_0

    .line 997
    iget v2, v0, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    invoke-virtual {v1, v2, v4}, Landroid/app/ActivityManager;->removeTask(II)Z

    .line 1000
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0075

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1002
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->sendAccessibilityEvent(I)V

    .line 1003
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public hide(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 471
    if-nez p1, :cond_0

    .line 472
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->setVisibility(I)V

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapse(I)V

    .line 478
    :cond_1
    return-void
.end method

.method public hideWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 961
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mThumbnailScaleUpStarted:Z

    if-nez v0, :cond_0

    .line 962
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mHideRecentsAfterThumbnailScaleUpStarted:Z

    .line 969
    :goto_0
    return-void

    .line 964
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->setVisibility(I)V

    .line 965
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mTransitionBg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 966
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPlaceholderThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 967
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mHideRecentsAfterThumbnailScaleUpStarted:Z

    goto :goto_0
.end method

.method public isInContentArea(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x1

    .line 327
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/recent/RecentsPanelView;->pointInside(IILandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    :cond_0
    :goto_0
    return v0

    .line 329
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/recent/RecentsPanelView;->pointInside(IILandroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 528
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    return v0
.end method

.method public numItemsInOneScreenful()I
    .locals 3

    .prologue
    .line 300
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    instance-of v1, v1, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    if-eqz v1, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    .line 303
    .local v0, scrollView:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    invoke-interface {v0}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->numItemsInOneScreenful()I

    move-result v1

    return v1

    .line 305
    .end local v0           #scrollView:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "missing Recents[Horizontal]ScrollView"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 481
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 484
    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-eqz v1, :cond_0

    .line 485
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 486
    .local v0, transitioner:Landroid/animation/LayoutTransition;
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 487
    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->createCustomAnimations(Landroid/animation/LayoutTransition;)V

    .line 492
    .end local v0           #transitioner:Landroid/animation/LayoutTransition;
    :goto_0
    return-void

    .line 489
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 490
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->clearRecentTasksList()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 495
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 498
    return-void
.end method

.method protected onFinishInflate()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 594
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 596
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 597
    const v0, 0x7f0d0072

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    .line 598
    const v0, 0x7f0d00ac

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/StatusBarTouchProxy;

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    .line 599
    new-instance v0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    .line 600
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    if-eqz v0, :cond_6

    .line 601
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    check-cast v8, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    .line 603
    .local v8, scrollView:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-interface {v8, v0}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->setAdapter(Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;)V

    .line 604
    invoke-interface {v8, p0}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->setCallback(Lcom/android/systemui/recent/RecentsCallback;)V

    .line 609
    const v0, 0x7f0d0046

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    .line 610
    const v0, 0x7f0d0074

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    .line 611
    new-instance v0, Lcom/android/systemui/recent/Choreographer;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recent/Choreographer;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mChoreo:Lcom/android/systemui/recent/Choreographer;

    .line 614
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mUseTouchWizGUI:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v0, :cond_3

    .line 615
    const v0, 0x7f0d00e6

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    .line 616
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentGoogleNowButton:Z

    if-eqz v0, :cond_0

    .line 617
    const v0, 0x7f0d00e7

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    .line 619
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentRemoveAllButton:Z

    if-eqz v0, :cond_1

    .line 620
    const v0, 0x7f0d00e8

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 624
    .local v7, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 626
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 628
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;

    invoke-direct {v1, p0, v9}, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 629
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;

    invoke-direct {v1, p0, v9}, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 630
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 632
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentGoogleNowButton:Z

    if-eqz v0, :cond_2

    .line 633
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;

    invoke-direct {v1, p0, v9}, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;

    invoke-direct {v1, p0, v9}, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 635
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 638
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentRemoveAllButton:Z

    if-eqz v0, :cond_3

    .line 639
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;

    invoke-direct {v1, p0, v9}, Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;

    invoke-direct {v1, p0, v9}, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 641
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 644
    .end local v7           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mNoRecentApp:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 645
    const v0, 0x7f0d00e5

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mNoRecentApp:Landroid/widget/TextView;

    .line 649
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 650
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 652
    .local v6, d:Landroid/view/Display;
    invoke-static {v6}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mHighEndGfx:Z

    .line 653
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mHighEndGfx:Z

    if-nez v0, :cond_7

    .line 654
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 661
    .end local v6           #d:Landroid/view/Display;
    :cond_5
    :goto_0
    new-instance v0, Lcom/android/systemui/recent/RecentsPanelView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentsPanelView$1;-><init>(Lcom/android/systemui/recent/RecentsPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    .line 672
    return-void

    .line 606
    .end local v8           #scrollView:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing Recents[Horizontal]ScrollView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    .restart local v6       #d:Landroid/view/Display;
    .restart local v8       #scrollView:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_5

    .line 657
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 1016
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "disable_pen_gesture"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 1017
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1025
    :cond_0
    :goto_0
    return v0

    .line 1022
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    if-nez v1, :cond_0

    .line 1025
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 972
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p2}, Lcom/android/systemui/recent/RecentsPanelView;->handleOnClick(Landroid/view/View;)V

    .line 973
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1072
    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-ne p1, v0, :cond_2

    .line 1073
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1074
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1076
    :cond_1
    const/4 v0, 0x1

    .line 1079
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 311
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZZ)V

    .line 313
    const/4 v0, 0x1

    .line 315
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 506
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 507
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mChoreo:Lcom/android/systemui/recent/Choreographer;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/Choreographer;->setPanelHeight(I)V

    .line 508
    return-void
.end method

.method onTaskThumbnailLoaded(Lcom/android/systemui/recent/TaskDescription;)V
    .locals 7
    .parameter "td"

    .prologue
    .line 735
    monitor-enter p1

    .line 736
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 737
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    .line 738
    .local v1, container:Landroid/view/ViewGroup;
    instance-of v5, v1, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    if-eqz v5, :cond_0

    .line 739
    const v5, 0x7f0d0073

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #container:Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .line 743
    .restart local v1       #container:Landroid/view/ViewGroup;
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 744
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 745
    .local v4, v:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    if-eqz v5, :cond_1

    .line 746
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 747
    .local v2, h:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    iget-boolean v5, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->loadedThumbnailAndIcon:Z

    if-nez v5, :cond_1

    iget-object v5, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    if-ne v5, p1, :cond_1

    .line 752
    const/4 v0, 0x0

    .line 753
    .local v0, animateShow:Z
    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v2, v5, v6, v0}, Lcom/android/systemui/recent/RecentsPanelView;->updateIcon(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 754
    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v2, v5, v6, v0}, Lcom/android/systemui/recent/RecentsPanelView;->updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V

    .line 755
    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->loadedThumbnailAndIcon:Z

    .line 756
    iget v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mNumItemsWaitingForThumbnailsAndIcons:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mNumItemsWaitingForThumbnailsAndIcons:I

    .line 743
    .end local v0           #animateShow:Z
    .end local v2           #h:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 761
    .end local v1           #container:Landroid/view/ViewGroup;
    .end local v3           #i:I
    .end local v4           #v:Landroid/view/View;
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->showIfReady()V

    .line 763
    return-void

    .line 761
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public onTasksLoaded(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const/4 v1, 0x0

    .line 826
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFirstScreenful:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 842
    :goto_0
    return-void

    .line 829
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFirstScreenful:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mNumItemsWaitingForThumbnailsAndIcons:I

    .line 832
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 833
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    .line 837
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->notifyDataSetInvalidated()V

    .line 838
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->updateUiElements(Landroid/content/res/Configuration;)V

    .line 839
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mReadyToShow:Z

    .line 840
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFirstScreenful:Z

    .line 841
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->showIfReady()V

    goto :goto_0

    .line 829
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1

    .line 835
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "ev"

    .prologue
    const/16 v2, 0x8

    .line 770
    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-nez v1, :cond_0

    .line 771
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 772
    .local v0, action:I
    if-nez v0, :cond_1

    .line 773
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->post(Ljava/lang/Runnable;)Z

    .line 788
    .end local v0           #action:I
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 774
    .restart local v0       #action:I
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 775
    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setVisibility(I)V

    .line 776
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->clearRecentTasksList()V

    .line 778
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 779
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 781
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 782
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 783
    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setVisibility(I)V

    .line 784
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->clearRecentTasksList()V

    goto :goto_0
.end method

.method public preloadRecentTasksList()V
    .locals 1

    .prologue
    .line 792
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-nez v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 795
    :cond_0
    return-void
.end method

.method public refreshRecentTasksList()V
    .locals 2

    .prologue
    .line 808
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->refreshRecentTasksList(Ljava/util/ArrayList;Z)V

    .line 809
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .parameter "eventType"

    .prologue
    .line 1086
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1089
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    .line 1093
    :cond_1
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .parameter "bar"

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    .line 534
    return-void
.end method

.method public setMinSwipeAlpha(F)V
    .locals 2
    .parameter "minAlpha"

    .prologue
    .line 675
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    instance-of v1, v1, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    if-eqz v1, :cond_0

    .line 676
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    .line 678
    .local v0, scrollView:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    invoke-interface {v0, p1}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->setMinSwipeAlpha(F)V

    .line 680
    .end local v0           #scrollView:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    :cond_0
    return-void
.end method

.method public setOnVisibilityChangedListener(Lcom/android/systemui/recent/RecentsPanelView$OnRecentsPanelVisibilityChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 547
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mVisibilityChangedListener:Lcom/android/systemui/recent/RecentsPanelView$OnRecentsPanelVisibilityChangedListener;

    .line 549
    return-void
.end method

.method public setRecentTasksLoader(Lcom/android/systemui/recent/RecentTasksLoader;)V
    .locals 0
    .parameter "loader"

    .prologue
    .line 543
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    .line 544
    return-void
.end method

.method public setStatusBarView(Landroid/view/View;)V
    .locals 1
    .parameter "statusBarView"

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recent/StatusBarTouchProxy;->setStatusBar(Landroid/view/View;)V

    .line 540
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mVisibilityChangedListener:Lcom/android/systemui/recent/RecentsPanelView$OnRecentsPanelVisibilityChangedListener;

    if-eqz v0, :cond_0

    .line 553
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mVisibilityChangedListener:Lcom/android/systemui/recent/RecentsPanelView$OnRecentsPanelVisibilityChangedListener;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/systemui/recent/RecentsPanelView$OnRecentsPanelVisibilityChangedListener;->onRecentsPanelVisibilityChanged(Z)V

    .line 555
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 556
    return-void

    .line 553
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show(ZZ)V
    .locals 2
    .parameter "show"
    .parameter "animate"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 338
    if-eqz p1, :cond_0

    .line 339
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recent/RecentsPanelView;->refreshRecentTasksList(Ljava/util/ArrayList;Z)V

    .line 340
    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingToShow:Z

    .line 341
    iput-boolean p2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingToShowAnimated:Z

    .line 342
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->showIfReady()V

    .line 346
    :goto_0
    return-void

    .line 344
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZZLjava/util/ArrayList;Z)V

    goto :goto_0
.end method

.method public show(ZZLjava/util/ArrayList;Z)V
    .locals 7
    .parameter "show"
    .parameter "animate"
    .parameter
    .parameter "firstScreenful"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p3, recentTaskDescriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 367
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const-string v6, "recentapps"

    invoke-static {v5, v6}, Lcom/android/systemui/recent/RecentsPanelView;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 369
    if-eqz p1, :cond_b

    .line 371
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    .line 372
    .local v0, kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v0, :cond_1

    .line 373
    invoke-virtual {v0, v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 464
    .end local v0           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_0
    :goto_0
    return-void

    .line 381
    .restart local v0       #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_1
    invoke-direct {p0, p3, p4}, Lcom/android/systemui/recent/RecentsPanelView;->refreshRecentTasksList(Ljava/util/ArrayList;Z)V

    .line 385
    iget-boolean v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFirstScreenful:Z

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_8

    move v1, v2

    .line 386
    .local v1, noApps:Z
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    if-eqz v5, :cond_a

    .line 387
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 388
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    if-eqz v1, :cond_2

    move v4, v3

    :cond_2
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 391
    iget-boolean v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mUseTouchWizGUI:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentRemoveAllButton:Z

    if-eqz v4, :cond_3

    .line 392
    if-eqz v1, :cond_9

    .line 393
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 414
    :cond_3
    :goto_2
    iget-boolean v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mUseTouchWizGUI:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v4, :cond_5

    .line 415
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 416
    iget-boolean v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentGoogleNowButton:Z

    if-eqz v4, :cond_4

    .line 417
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 418
    :cond_4
    iget-boolean v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentRemoveAllButton:Z

    if-eqz v4, :cond_5

    .line 419
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 441
    .end local v0           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    .end local v1           #noApps:Z
    :cond_5
    :goto_3
    if-eqz p2, :cond_d

    .line 442
    iget-boolean v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-eq v4, p1, :cond_7

    .line 443
    iput-boolean p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    .line 444
    if-eqz p1, :cond_6

    .line 445
    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/RecentsPanelView;->setVisibility(I)V

    .line 447
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mChoreo:Lcom/android/systemui/recent/Choreographer;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recent/Choreographer;->startAnimation(Z)V

    .line 455
    :cond_7
    :goto_4
    if-eqz p1, :cond_f

    .line 456
    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setFocusable(Z)V

    .line 457
    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setFocusableInTouchMode(Z)V

    .line 458
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->requestFocus()Z

    goto :goto_0

    .restart local v0       #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_8
    move v1, v3

    .line 385
    goto :goto_1

    .line 395
    .restart local v1       #noApps:Z
    :cond_9
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    .line 400
    :cond_a
    if-eqz v1, :cond_3

    .line 404
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v4}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelLoadingThumbnailsAndIcons()V

    .line 405
    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksDirty:Z

    .line 407
    iput-boolean v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingToShow:Z

    .line 408
    iput-boolean v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mReadyToShow:Z

    goto/16 :goto_0

    .line 426
    .end local v0           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    .end local v1           #noApps:Z
    :cond_b
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v5}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelLoadingThumbnailsAndIcons()V

    .line 427
    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksDirty:Z

    .line 428
    iput-boolean v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingToShow:Z

    .line 429
    iput-boolean v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mReadyToShow:Z

    .line 432
    iget-boolean v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mUseTouchWizGUI:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v5, :cond_5

    .line 433
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 434
    iget-boolean v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentGoogleNowButton:Z

    if-eqz v5, :cond_c

    .line 435
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 436
    :cond_c
    iget-boolean v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentRemoveAllButton:Z

    if-eqz v5, :cond_5

    .line 437
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 450
    :cond_d
    iput-boolean p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    .line 451
    if-eqz p1, :cond_e

    :goto_5
    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/RecentsPanelView;->setVisibility(I)V

    .line 452
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mChoreo:Lcom/android/systemui/recent/Choreographer;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recent/Choreographer;->jumpTo(Z)V

    .line 453
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/RecentsPanelView;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_4

    .line 451
    :cond_e
    const/16 v3, 0x8

    goto :goto_5

    .line 460
    :cond_f
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v2, :cond_0

    .line 461
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->dismiss()V

    goto/16 :goto_0
.end method

.method public updateValuesFromResources()V
    .locals 4

    .prologue
    const v3, 0x7f0201b6

    .line 559
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 560
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mThumbnailWidth:I

    .line 561
    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFitThumbnailToXY:Z

    .line 564
    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mUseTouchWizGUI:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v1, :cond_3

    .line 565
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/Button;

    if-eqz v1, :cond_4

    .line 566
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0a00bb

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 571
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentGoogleNowButton:Z

    if-eqz v1, :cond_1

    .line 572
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/Button;

    if-eqz v1, :cond_5

    .line 573
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0a00bc

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 579
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentRemoveAllButton:Z

    if-eqz v1, :cond_2

    .line 580
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/Button;

    if-eqz v1, :cond_6

    .line 581
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0a00bd

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 586
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mNoRecentApp:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 587
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mNoRecentApp:Landroid/widget/TextView;

    const v2, 0x7f0a000b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 590
    :cond_3
    return-void

    .line 567
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 568
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 574
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 575
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 582
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    .line 583
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageButton;

    const v2, 0x7f0201b4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2
.end method
