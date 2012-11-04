.class public Lcom/android/systemui/statusbar/MiniModeAppsPanel;
.super Landroid/widget/FrameLayout;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Lcom/android/systemui/statusbar/tablet/StatusBarPanel;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollRunnable;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescriptionComparatorByLabel;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescriptionComparator;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$IconInfo;
    }
.end annotation


# static fields
.field private static final ACTION_MINI_MODE:Ljava/lang/String; = "com.samsung.action.MINI_MODE_SERVICE"

.field private static final CATEGORY_MINI_MODE:Ljava/lang/String; = "com.samsung.category.MINI_MODE_LAUNCHER"

.field private static final DEBUG:Z = false

.field private static final DEBUG_ANIM:Z = false

.field private static final DEBUG_DRAG:Z = false

.field private static final DRAG_LABEL:Ljava/lang/String; = "MiniAppDragItem"

.field private static final DRAG_TEXT:Ljava/lang/String; = null

.field private static final ICON_LANDSCAPE_FOCUS:Ljava/lang/String; = "com.sec.minimode.icon.landscape.focus"

.field private static final ICON_LANDSCAPE_NORMAL:Ljava/lang/String; = "com.sec.minimode.icon.landscape.normal"

.field private static final ICON_PORTRAIT_FOCUS:Ljava/lang/String; = "com.sec.minimode.icon.portrait.focus"

.field private static final ICON_PORTRAIT_NORMAL:Ljava/lang/String; = "com.sec.minimode.icon.portrait.normal"

.field private static final ICON_PREVIEW_NORMAL:Ljava/lang/String; = "com.sec.minimode.icon.preview.normal"

.field private static final LONG_PRESS_TIMEOUT:I = 0xfa

.field private static final MESSAGE_APP_ICON_LONG_PRESS:I = 0x2

.field private static final MESSAGE_APP_PREVIEW_LONG_PRESS:I = 0x3

.field private static final MESSAGE_FOCUS_CHANGED:I = 0x1

.field private static final MILLISECOND_SCROLL_AFTER_CLICK_DELAY:I = 0xc8

.field private static final MILLISECOND_SCROLL_DELAY:I = 0x1f4

.field private static final MINIMODETRAY_FOCUSED_TEXT:I = -0xd74401

.field private static final MINIMODETRAY_TEXT:I = -0x1

.field private static final NUM_HW_TOUCH_SOUND_CHANNELS:I = 0x1

.field public static final PREIVEW_ANIMATION_DURATION:I = 0x190

.field public static final PREIVEW_ANIMATION_START_OFFSET:I = 0x96

.field private static final SUPPORT_DEFAULT_ICON_LIST_ORDER:Z = false

.field private static SUPPORT_MULTIWINDOW:Z = false

.field private static final SYSTEM_UI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "MiniModeAppsPanel"


# instance fields
.field private am:Landroid/app/ActivityManager;

.field private mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackgroundProtector:Landroid/view/View;

.field private mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCancelButton:Landroid/widget/Button;

.field private mChosenApps:[Ljava/lang/String;

.field private mCloseButton:Landroid/widget/ImageView;

.field private mComponentDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mComponentDescriptionsOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerScroller:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollRunnable;

.field mCurrentDragAppIcon:Landroid/widget/ImageView;

.field private mCurrentDraggingView:Landroid/view/View;

.field private mDoneButton:Landroid/widget/Button;

.field private mEditButton:Landroid/widget/Button;

.field private mEditPanelUIEnabled:Z

.field private mEmptyAppsButton:Landroid/widget/TextView;

.field private mEmptyView:Landroid/view/View;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mIconDpi:I

.field private mIsScrollDelayed:Z

.field private mIsScrollLeft:Z

.field private mLastLocale:Ljava/util/Locale;

.field private mListButton:Landroid/widget/ImageView;

.field private mMiniAppBgHeight:I

.field private mMiniAppsBG:Landroid/widget/LinearLayout;

.field private mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

.field private mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

.field private mMiniAppsPanelEditScroller:Landroid/widget/HorizontalScrollView;

.field private mMiniAppsScroller:Landroid/view/ViewGroup;

.field private mMiniAppsTray:Landroid/widget/FrameLayout;

.field private mMiniModeAppCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

.field private mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

.field private mModeButton:Landroid/widget/ImageView;

.field mOnDragging:Z

.field private mOnMiniAppCloseCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

.field private mPanelEditContainerDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;

.field mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

.field private mPreviewItemClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;

.field private mPreviewItemLongClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;

.field private mPreviewItemOnTouchListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;

.field private mRecentsContainer:Landroid/widget/LinearLayout;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolId:[I

.field private mStatusBarHandler:Landroid/os/Handler;

.field private mTrayBGDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;

.field private mTrayContainerDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;

.field private mTrayIconLongClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;

.field private mTrayIconOnTouchListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;

.field private mTrayItemDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->DRAG_TEXT:Ljava/lang/String;

    .line 131
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 748
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 749
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 752
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    .line 154
    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;

    .line 158
    new-instance v3, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    invoke-direct {v3, p0, v5, v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;II)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    .line 159
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnDragging:Z

    .line 162
    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    .line 163
    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/HorizontalScrollView;

    .line 164
    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    .line 165
    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsBG:Landroid/widget/LinearLayout;

    .line 166
    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;

    .line 167
    iput v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppBgHeight:I

    .line 169
    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    .line 170
    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    .line 171
    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCancelButton:Landroid/widget/Button;

    .line 172
    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    .line 174
    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mListButton:Landroid/widget/ImageView;

    .line 175
    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mModeButton:Landroid/widget/ImageView;

    .line 176
    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->am:Landroid/app/ActivityManager;

    .line 178
    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    .line 179
    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;

    .line 181
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    .line 184
    new-instance v3, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewItemClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;

    .line 187
    new-instance v3, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewItemLongClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;

    .line 190
    new-instance v3, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayIconLongClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;

    .line 193
    new-instance v3, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewItemOnTouchListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;

    .line 196
    new-instance v3, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayIconOnTouchListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;

    .line 199
    new-instance v3, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayItemDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;

    .line 202
    new-instance v3, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayContainerDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;

    .line 205
    new-instance v3, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayBGDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;

    .line 208
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollDelayed:Z

    .line 209
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollLeft:Z

    .line 212
    new-instance v3, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollRunnable;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollRunnable;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContainerScroller:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollRunnable;

    .line 215
    new-instance v3, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPanelEditContainerDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;

    .line 218
    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    .line 221
    iput-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDragAppIcon:Landroid/widget/ImageView;

    .line 236
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPoolId:[I

    .line 599
    new-instance v3, Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnMiniAppCloseCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

    .line 619
    new-instance v3, Lcom/android/systemui/statusbar/MiniModeAppsPanel$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$2;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    .line 674
    new-instance v3, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 754
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 755
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    .line 758
    .local v2, xlarge:Z
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    iput-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;

    .line 761
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 762
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 766
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 767
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 769
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 771
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;

    .line 774
    invoke-static {p1}, Lcom/android/systemui/multiwindow/Utilities;->isMultiWindowEnabled(Landroid/content/Context;)Z

    move-result v3

    sput-boolean v3, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    .line 776
    sget-boolean v3, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v3, :cond_1

    .line 777
    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->am:Landroid/app/ActivityManager;

    .line 778
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getLauncherLargeIconDensity()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIconDpi:I

    .line 787
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->initComponentDescriptionOrder()V

    .line 789
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->initComponentDescriptions()V

    .line 791
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->initMiniModeAppsPanelSound()V

    .line 792
    return-void

    .line 782
    :cond_1
    if-eqz v2, :cond_2

    const/16 v3, 0xa0

    :goto_1
    iput v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIconDpi:I

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_1
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 107
    sget-boolean v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIconDpi:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewItemClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/content/ComponentName;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getComponentDescriptionIndex(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findComponentDescriptionByName(Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayIconLongClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewItemLongClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Ljava/util/Locale;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->updateImageOfMiniModeAppsPanel()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->refreshApplicationList()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->closeEditPanel()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->updateTextOfMiniModeAppsPanel()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->openEditPanel()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->save()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->playTrayCloseSound()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollDelayed:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollDelayed:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollLeft:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollLeft:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContainerScroller:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollRunnable;

    return-object v0
.end method

.method static synthetic access$3700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->DRAG_TEXT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isMiinAppsEditPanelShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/sec/minimode/manager/MiniModeAppManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/DragEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isAcceptableDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method private adjustTrayPadding()V
    .locals 7

    .prologue
    const v6, 0x7f0c0071

    const/4 v5, 0x0

    .line 2316
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c006f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int v0, v2, v3

    .line 2317
    .local v0, containerWidth:I
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 2319
    .local v1, scrollerWidth:I
    if-ge v0, v1, :cond_0

    .line 2320
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    sub-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2324
    :goto_0
    return-void

    .line 2322
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0
.end method

.method private clearItemsAnimation()V
    .locals 4

    .prologue
    .line 1701
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 1702
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1703
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1704
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1702
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1706
    .end local v0           #child:Landroid/view/View;
    :cond_0
    const v3, 0x7f0d0047

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 1707
    return-void
.end method

.method private closeEditPanel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2334
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v0, :cond_0

    .line 2335
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2336
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2337
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2338
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2339
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2340
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2342
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->setEmptyBtnVisibility()Z

    .line 2343
    return-void
.end method

.method private createPreviewAnimation()Landroid/view/animation/AnimationSet;
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/high16 v2, 0x3f80

    .line 1183
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1187
    .local v9, animationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f9c28f6

    const v3, 0x3f99999a

    const v6, 0x3ee147ae

    const v8, 0x3f0a3d71

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1188
    .local v0, scaleZoom:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1189
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e4ccccd

    invoke-direct {v10, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1190
    .local v10, fadeIn:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1191
    const-wide/16 v1, 0x190

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1192
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1193
    const-wide/16 v1, 0x96

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 1194
    return-object v9
.end method

.method private findComponentDescriptionByClassName(Ljava/lang/String;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .locals 3
    .parameter "name"

    .prologue
    .line 2248
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 2249
    .local v0, cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2254
    .end local v0           #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findComponentDescriptionByName(Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .locals 3
    .parameter "name"

    .prologue
    .line 720
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 723
    .local v0, cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 728
    .end local v0           #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getComponentDescriptionIndex(Landroid/content/ComponentName;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptionsOrder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private initChosenApps()V
    .locals 1

    .prologue
    .line 2258
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanelDataStorage;->load(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    .line 2265
    return-void
.end method

.method private initComponentDescriptionOrder()V
    .locals 7

    .prologue
    .line 709
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptionsOrder:Ljava/util/ArrayList;

    .line 711
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 714
    .local v3, mComponentNames:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 715
    .local v4, str:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptionsOrder:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 717
    .end local v4           #str:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initComponentDescriptions()V
    .locals 10

    .prologue
    const/16 v8, 0x80

    .line 1075
    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    .line 1135
    :cond_0
    return-void

    .line 1083
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    .line 1085
    sget-boolean v7, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v7, :cond_3

    .line 1087
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1088
    .local v4, launcherMultiWindowIntent:Landroid/content/Intent;
    sget-object v7, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->CATEGORY_MULTIWINDOW_LAUNCHER:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1089
    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 1091
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 1092
    .local v6, r:Landroid/content/pm/ResolveInfo;
    const/4 v0, 0x0

    .line 1093
    .local v0, cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    if-eqz v6, :cond_2

    .line 1095
    :try_start_0
    new-instance v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .end local v0           #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, p0, v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/content/pm/ComponentInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1102
    .restart local v0       #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :goto_1
    if-eqz v0, :cond_2

    .line 1105
    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1096
    .end local v0           #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :catch_0
    move-exception v1

    .line 1097
    .local v1, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 1098
    .restart local v0       #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    const-string v7, "MiniModeAppsPanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initComponentDescriptions() : exception occurs! while loading mini app (activityInfo="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1110
    .end local v0           #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #launcherMultiWindowIntent:Landroid/content/Intent;
    .end local v5           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6           #r:Landroid/content/pm/ResolveInfo;
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1111
    .local v3, launcherIntent:Landroid/content/Intent;
    const-string v7, "com.samsung.category.MINI_MODE_LAUNCHER"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1112
    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 1114
    .restart local v5       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 1115
    .restart local v6       #r:Landroid/content/pm/ResolveInfo;
    const/4 v0, 0x0

    .line 1116
    .restart local v0       #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    if-eqz v6, :cond_4

    .line 1118
    :try_start_1
    new-instance v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .end local v0           #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, p0, v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/content/pm/ComponentInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1125
    .restart local v0       #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :goto_3
    if-eqz v0, :cond_4

    .line 1128
    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1119
    .end local v0           #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :catch_1
    move-exception v1

    .line 1120
    .restart local v1       #e:Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 1121
    .restart local v0       #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    const-string v7, "MiniModeAppsPanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initComponentDescriptions() : exception occurs! while loading mini app (serviceInfo="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private initGestureDetector()V
    .locals 5

    .prologue
    .line 1063
    new-instance v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel$12;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$12;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    .line 1070
    .local v1, listener:Landroid/view/GestureDetector$SimpleOnGestureListener;
    const/4 v0, 0x1

    .line 1071
    .local v0, ignoreMultitouch:Z
    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1072
    return-void
.end method

.method private initMiniModeAppsPanelSound()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1139
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v5, v5, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPool:Landroid/media/SoundPool;

    .line 1140
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPoolId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f060001

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 1141
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPoolId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f060002

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    .line 1143
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    .line 1144
    return-void
.end method

.method private isAcceptableDragEvent(Landroid/view/DragEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2367
    :try_start_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 2379
    :cond_0
    :goto_0
    return v2

    .line 2369
    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2371
    .local v1, label:Ljava/lang/String;
    const-string v4, "MiniAppDragItem"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 2379
    goto :goto_0

    .line 2374
    .end local v1           #label:Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v2, v3

    .line 2376
    goto :goto_0
.end method

.method private isChosenApp(Ljava/lang/String;)Z
    .locals 6
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    .line 2268
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    if-nez v5, :cond_1

    .line 2276
    :cond_0
    :goto_0
    return v4

    .line 2271
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 2272
    .local v3, str:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2271
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2276
    .end local v3           #str:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isMiinAppsEditPanelShowing()Z
    .locals 1

    .prologue
    .line 2359
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 2360
    const/4 v0, 0x0

    .line 2362
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    goto :goto_0
.end method

.method private openEditPanel()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 2347
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v0, :cond_0

    .line 2348
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2349
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2350
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2351
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2353
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2354
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2356
    :cond_1
    return-void
.end method

.method private playHwTouchSound()V
    .locals 10

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 1148
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    .line 1151
    .local v7, mRingerMode:I
    packed-switch v7, :pswitch_data_0

    .line 1162
    :goto_0
    return-void

    .line 1153
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v9, v0

    .line 1154
    .local v9, streamVolume:F
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v8, v0

    .line 1155
    .local v8, streamMaxVolume:F
    div-float v2, v9, v8

    .line 1156
    .local v2, adjustmentValue:F
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPoolId:[I

    aget v1, v1, v4

    const/high16 v6, 0x3f80

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 1151
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private playTrayCloseSound()V
    .locals 10

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 1166
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    .line 1169
    .local v7, mRingerMode:I
    packed-switch v7, :pswitch_data_0

    .line 1180
    :goto_0
    return-void

    .line 1171
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v9, v0

    .line 1172
    .local v9, streamVolume:F
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v8, v0

    .line 1173
    .local v8, streamMaxVolume:F
    div-float v2, v9, v8

    .line 1174
    .local v2, adjustmentValue:F
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPoolId:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    const/high16 v6, 0x3f80

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 1169
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private refreshApplicationList()V
    .locals 17

    .prologue
    .line 1200
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->clearItemsAnimation()V

    .line 1202
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1204
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1206
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->initChosenApps()V

    .line 1208
    const/4 v3, 0x0

    .line 1209
    .local v3, componentDescriptionsSortedByLabel:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #componentDescriptionsSortedByLabel:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;>;"
    check-cast v3, Ljava/util/ArrayList;

    .line 1210
    .restart local v3       #componentDescriptionsSortedByLabel:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;>;"
    new-instance v14, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescriptionComparatorByLabel;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescriptionComparatorByLabel;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-static {v3, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1213
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1214
    .local v2, cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f03000d

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 1216
    .local v13, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayIconOnTouchListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1217
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1224
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayItemDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 1225
    invoke-virtual {v13, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1227
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f030010

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 1229
    .local v9, preview:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewItemOnTouchListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;

    invoke-virtual {v9, v14}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1230
    invoke-virtual {v9, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1232
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v14, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1235
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isChosenApp(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v2, v14}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setChosen(Z)V

    .line 1236
    invoke-virtual {v2, v13}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setIconView(Landroid/view/View;)V

    .line 1237
    invoke-virtual {v2, v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setPreview(Landroid/view/View;)V

    .line 1238
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreviewAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v14

    if-nez v14, :cond_1

    .line 1239
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->createPreviewAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setPreviewAnimation(Landroid/view/animation/AnimationSet;)V

    .line 1241
    :cond_1
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->updateLabel()V

    .line 1242
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    const/4 v14, 0x1

    :goto_1
    invoke-virtual {v2, v14}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->updateResources(Z)V

    .line 1245
    sget-boolean v14, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v14, :cond_0

    .line 1246
    check-cast v13, Landroid/view/ViewGroup;

    .end local v13           #view:Landroid/view/View;
    const v14, 0x7f0d0044

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1247
    .local v5, iconView:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0073

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1248
    .local v8, multiWindowIconBottomPadding:I
    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v6

    .line 1249
    .local v6, left:I
    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v12

    .line 1250
    .local v12, top:I
    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v10

    .line 1251
    .local v10, right:I
    invoke-virtual {v5, v6, v12, v10, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1252
    const/16 v14, 0xfe

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setAlpha(I)V

    goto/16 :goto_0

    .line 1242
    .end local v5           #iconView:Landroid/widget/ImageView;
    .end local v6           #left:I
    .end local v8           #multiWindowIconBottomPadding:I
    .end local v10           #right:I
    .end local v12           #top:I
    .restart local v13       #view:Landroid/view/View;
    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    .line 1257
    .end local v2           #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v9           #preview:Landroid/view/View;
    .end local v13           #view:Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    if-eqz v14, :cond_5

    .line 1258
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v7, :cond_7

    aget-object v11, v1, v4

    .line 1259
    .local v11, str:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findComponentDescriptionByClassName(Ljava/lang/String;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    move-result-object v2

    .line 1260
    .restart local v2       #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    if-eqz v2, :cond_4

    .line 1261
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1258
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1266
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v7           #len$:I
    .end local v11           #str:Ljava/lang/String;
    .local v4, i$:Ljava/util/Iterator;
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1267
    .restart local v2       #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    if-eqz v2, :cond_6

    .line 1268
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 1274
    .end local v2           #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f03000d

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;

    .line 1275
    return-void
.end method

.method private save()Z
    .locals 5

    .prologue
    .line 2280
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    .line 2282
    .local v2, str:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2283
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 2284
    .local v0, cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 2282
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2287
    .end local v0           #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    const-string v4, "EOF"

    aput-object v4, v2, v3

    .line 2289
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanelDataStorage;->store(Ljava/io/File;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2293
    const/4 v3, 0x1

    .line 2296
    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private setCloseIconEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1696
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1698
    :cond_0
    return-void
.end method

.method private setEmptyBtnVisibility()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2300
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 2301
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 2303
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2305
    :cond_0
    const/4 v0, 0x1

    .line 2311
    :cond_1
    :goto_0
    return v0

    .line 2307
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 2309
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateImageOfMiniModeAppsPanel()V
    .locals 6

    .prologue
    .line 1054
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1055
    .local v0, cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->updateIconInfo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1057
    .end local v0           #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 1058
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "MiniModeAppsPanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private updateTextOfMiniModeAppsPanel()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1025
    const v5, 0x7f0d0050

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1026
    .local v2, editBtn:Landroid/widget/Button;
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v5, :cond_0

    .line 1027
    const v5, 0x7f0a00d0

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(I)V

    .line 1028
    invoke-virtual {v2, v8, v7}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1032
    :cond_0
    const v5, 0x7f0d004b

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1033
    .local v4, emptyBtn:Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 1034
    const v5, 0x7f0a00cf

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1035
    invoke-virtual {v4, v8, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1038
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v6, 0x7f0d0052

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1039
    .local v3, editPanelTitle:Landroid/widget/TextView;
    const v5, 0x7f0a00ce

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1040
    invoke-virtual {v3, v8, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1042
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v6, 0x7f0d0054

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1043
    .local v1, doneBtn:Landroid/widget/Button;
    const v5, 0x7f0a00c8

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 1044
    invoke-virtual {v1, v8, v7}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1046
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v6, 0x7f0d0053

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1047
    .local v0, cancelBtn:Landroid/widget/Button;
    const/high16 v5, 0x104

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 1048
    invoke-virtual {v0, v8, v7}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1049
    return-void
.end method


# virtual methods
.method public closeMiniAppsPanel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1679
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->setCloseIconEnabled(Z)V

    .line 1680
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v0, :cond_0

    .line 1681
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 1684
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v0, :cond_1

    .line 1685
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mListButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1686
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mModeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1689
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->refreshApplicationList()V

    .line 1690
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->setItemsAnimation(Z)V

    .line 1691
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->closeEditPanel()V

    .line 1692
    return-void
.end method

.method public getLauncherLargeIconDensity()I
    .locals 5

    .prologue
    const/16 v3, 0x140

    .line 796
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 797
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 798
    .local v0, density:I
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 800
    .local v2, sw:I
    const/16 v4, 0x258

    if-ge v2, v4, :cond_0

    .line 821
    .end local v0           #density:I
    :goto_0
    return v0

    .line 805
    .restart local v0       #density:I
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 821
    int-to-float v3, v0

    const/high16 v4, 0x3fc0

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v0, v3

    goto :goto_0

    .line 807
    :sswitch_0
    const/16 v0, 0xa0

    goto :goto_0

    .line 809
    :sswitch_1
    const/16 v0, 0xf0

    goto :goto_0

    :sswitch_2
    move v0, v3

    .line 811
    goto :goto_0

    :sswitch_3
    move v0, v3

    .line 813
    goto :goto_0

    .line 815
    :sswitch_4
    const/16 v0, 0x1e0

    goto :goto_0

    .line 817
    :sswitch_5
    const/16 v0, 0x280

    goto :goto_0

    .line 805
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xd5 -> :sswitch_2
        0xf0 -> :sswitch_3
        0x140 -> :sswitch_4
        0x1e0 -> :sswitch_5
    .end sparse-switch
.end method

.method public isInContentArea(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 736
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 737
    .local v1, l:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 738
    .local v2, r:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 739
    .local v3, t:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 740
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

.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "view"

    .prologue
    .line 1278
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isMiinAppsEditPanelShowing()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 1281
    iget-object v11, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1282
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1283
    .local v1, cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0d0058

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1284
    .local v7, previewIcon:Landroid/widget/ImageView;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreviewAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 1285
    .local v0, anim:Landroid/view/animation/AnimationSet;
    if-nez v0, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1289
    :cond_0
    if-eqz v0, :cond_1

    .line 1290
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1293
    :cond_1
    iget-object v11, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 1294
    .local v4, i:I
    iget-object v11, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 1295
    .local v8, previewWidth:I
    mul-int v10, v4, v8

    .line 1296
    .local v10, xOffsetAtLeft:I
    iget-object v11, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v11}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v11

    sub-int/2addr v11, v8

    div-int/lit8 v2, v11, 0x2

    .line 1298
    .local v2, centerX:I
    iget-object v11, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/HorizontalScrollView;

    sub-int v12, v10, v2

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 1299
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setChosen(Z)V

    .line 1300
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->updatePreview()V

    .line 1344
    .end local v0           #anim:Landroid/view/animation/AnimationSet;
    .end local v1           #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v2           #centerX:I
    .end local v4           #i:I
    .end local v7           #previewIcon:Landroid/widget/ImageView;
    .end local v8           #previewWidth:I
    .end local v10           #xOffsetAtLeft:I
    :cond_2
    :goto_0
    return-void

    .line 1305
    :cond_3
    if-eqz p1, :cond_2

    .line 1307
    move-object v9, p1

    .line 1308
    .local v9, v:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1309
    .local v3, componentDescription:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;
    invoke-static {v3}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->access$3000(Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;)Landroid/content/ComponentName;

    move-result-object v6

    .line 1314
    .local v6, name:Landroid/content/ComponentName;
    const/4 v5, 0x0

    .line 1315
    .local v5, intent:Landroid/content/Intent;
    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;
    invoke-static {v3}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->access$3100(Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;)Landroid/content/pm/ComponentInfo;

    move-result-object v11

    instance-of v11, v11, Landroid/content/pm/ServiceInfo;

    if-eqz v11, :cond_8

    .line 1317
    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    .line 1318
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1327
    :cond_4
    :goto_1
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v11, :cond_5

    .line 1328
    iget-object v11, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setClickable(Z)V

    .line 1331
    :cond_5
    sget-boolean v11, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v11, :cond_6

    .line 1332
    iget-object v11, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mListButton:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1333
    iget-object v11, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mModeButton:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1336
    :cond_6
    iget-object v11, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    instance-of v11, v11, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    if-eqz v11, :cond_7

    .line 1337
    iget-object v11, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    check-cast v11, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    .line 1341
    :cond_7
    iget-object v11, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    const/16 v12, 0x425

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1342
    iget-object v11, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    const/16 v12, 0x425

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1319
    :cond_8
    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;
    invoke-static {v3}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->access$3100(Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;)Landroid/content/pm/ComponentInfo;

    move-result-object v11

    instance-of v11, v11, Landroid/content/pm/ActivityInfo;

    if-eqz v11, :cond_4

    .line 1321
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    .line 1322
    const/high16 v11, 0x1000

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1323
    sget-object v11, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->EXTRA_WINDOW_MODE:Ljava/lang/String;

    sget v12, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1324
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    const/4 v3, 0x0

    .line 828
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 832
    const v1, 0x7f0d0048

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    .line 833
    const v1, 0x7f0d0049

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    .line 834
    const v1, 0x7f0d0046

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    .line 837
    const v1, 0x7f0d004c

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsTray:Landroid/widget/FrameLayout;

    .line 840
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03000f

    invoke-static {v1, v2, v14}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    .line 843
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppBgHeight:I

    .line 846
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    iget v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppBgHeight:I

    const/16 v5, 0x7e1

    const v6, 0x800028

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 856
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x53

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 857
    const-string v1, "MiniModeAppsEditPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 858
    const v1, 0x7f0f0014

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 859
    const-string v1, "com.android.systemui"

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 861
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 863
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v2, 0x7f0d0055

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/HorizontalScrollView;

    .line 864
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v2, 0x7f0d0056

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    .line 866
    const v1, 0x7f0d0047

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsBG:Landroid/widget/LinearLayout;

    .line 868
    const v1, 0x7f0d0050

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    .line 871
    sget-boolean v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v1, :cond_0

    .line 872
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 876
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 877
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    move v1, v13

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    .line 878
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$4;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 886
    :cond_1
    const v1, 0x7f0d004b

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    .line 887
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 888
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$5;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 895
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v2, 0x7f0d0054

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    .line 896
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$6;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 904
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v2, 0x7f0d0053

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCancelButton:Landroid/widget/Button;

    .line 905
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$7;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 914
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->createPreviewAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

    .line 924
    const v1, 0x7f0d004e

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    .line 925
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$8;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 939
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 940
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$9;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 959
    sget-boolean v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v1, :cond_4

    .line 961
    const v1, 0x7f0d004f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mListButton:Landroid/widget/ImageView;

    .line 962
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mListButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 963
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mListButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$10;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$10;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 970
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->am:Landroid/app/ActivityManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;

    if-eqz v1, :cond_3

    .line 971
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->am:Landroid/app/ActivityManager;

    const/16 v2, 0x64

    sget v4, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    invoke-virtual {v1, v2, v4, v14}, Landroid/app/ActivityManager;->getRunningTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v10

    .line 973
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_6

    .line 974
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mListButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 975
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mListButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 983
    .end local v10           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 984
    .local v9, left:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v12

    .line 985
    .local v12, top:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 986
    .local v11, right:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    .line 987
    .local v8, bottom:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v9, v12, v11, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 990
    const v1, 0x7f0d004d

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mModeButton:Landroid/widget/ImageView;

    .line 991
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mModeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 992
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mModeButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$11;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$11;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1002
    .end local v8           #bottom:I
    .end local v9           #left:I
    .end local v11           #right:I
    .end local v12           #top:I
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayContainerDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 1003
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPanelEditContainerDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 1004
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsBG:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayBGDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 1006
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->refreshApplicationList()V

    .line 1008
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->setEmptyBtnVisibility()Z

    .line 1019
    new-instance v1, Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/minimode/manager/MiniModeAppManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    .line 1020
    new-instance v1, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniModeAppCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    .line 1021
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniModeAppCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnMiniAppCloseCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->setOnFocusChangedCallback(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;)V

    .line 1022
    return-void

    :cond_5
    move v1, v3

    .line 877
    goto/16 :goto_0

    .line 977
    .restart local v10       #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mListButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 978
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mListButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setClickable(Z)V

    goto/16 :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .parameter "view"

    .prologue
    const/16 v7, 0x425

    const/4 v4, 0x1

    .line 1347
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 1348
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1349
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1350
    .local v0, componentDescription:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->access$3000(Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1354
    .local v1, name:Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    iget v5, v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->x:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    iget v6, v6, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->y:F

    float-to-int v6, v6

    invoke-virtual {v3, v1, v5, v6}, Lcom/sec/minimode/manager/MiniModeAppManager;->startWithPosition(Landroid/content/ComponentName;II)V

    .line 1355
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnDragging:Z

    .line 1357
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    instance-of v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    if-eqz v3, :cond_0

    .line 1358
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    check-cast v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    .line 1362
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1363
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v3, v4

    .line 1367
    .end local v0           #componentDescription:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v1           #name:Landroid/content/ComponentName;
    .end local v2           #v:Landroid/view/View;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 2328
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2329
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->adjustTrayPadding()V

    .line 2330
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x0

    .line 1394
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isMiinAppsEditPanelShowing()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1398
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1463
    :cond_0
    :goto_0
    return v8

    .line 1402
    :pswitch_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1403
    .local v2, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1404
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xfa

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1410
    .end local v2           #msg:Landroid/os/Message;
    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1420
    :cond_1
    if-eqz p1, :cond_0

    .line 1422
    move-object v3, p1

    .line 1423
    .local v3, v:Landroid/view/View;
    const v4, 0x7f0d0044

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1425
    .local v0, appIcon:Landroid/widget/ImageView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 1429
    :pswitch_2
    const/16 v4, 0x7e

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1431
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->calculatePosition(Landroid/view/MotionEvent;)V

    .line 1433
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnDragging:Z

    goto :goto_0

    .line 1439
    :pswitch_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnDragging:Z

    if-eqz v4, :cond_0

    .line 1441
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1443
    .local v1, componentDescription:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->calculatePosition(Landroid/view/MotionEvent;)V

    .line 1446
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->access$3000(Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;)Landroid/content/ComponentName;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    iget v6, v6, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->x:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    iget v7, v7, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->y:F

    float-to-int v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/minimode/manager/MiniModeAppManager;->move(Landroid/content/ComponentName;II)V

    goto :goto_0

    .line 1454
    .end local v1           #componentDescription:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :pswitch_4
    const/16 v4, 0xff

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1456
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnDragging:Z

    goto :goto_0

    .line 1398
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1425
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public openMiniAppsPanel()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1653
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->setCloseIconEnabled(Z)V

    .line 1654
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v1, :cond_0

    .line 1655
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 1658
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v1, :cond_1

    .line 1659
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mModeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1660
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->am:Landroid/app/ActivityManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;

    if-eqz v1, :cond_1

    .line 1661
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->am:Landroid/app/ActivityManager;

    const/16 v2, 0x64

    sget v3, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/ActivityManager;->getRunningTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v0

    .line 1663
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 1664
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mListButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1665
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mListButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1673
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_1
    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->setItemsAnimation(Z)V

    .line 1675
    return-void

    .line 1667
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mListButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1668
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mListButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_0
.end method

.method public setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .parameter "bar"

    .prologue
    .line 744
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    .line 745
    return-void
.end method

.method public setItemsAnimation(Z)V
    .locals 24
    .parameter "isShowAnim"

    .prologue
    .line 1471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v10

    .line 1472
    .local v10, count:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0c0070

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 1473
    .local v14, miniAppItemHeight:I
    add-int/lit8 v20, v10, -0x1

    mul-int/lit8 v15, v20, 0x28

    .line 1476
    .local v15, miniAppItemHideAnimDelay:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0c006f

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 1477
    .local v16, miniAppItemWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v18

    .line 1478
    .local v18, scrollerWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v20

    div-int v19, v20, v16

    .line 1479
    .local v19, startPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v20

    add-int v20, v20, v18

    div-int v12, v20, v16

    .line 1480
    .local v12, endPos:I
    sget-boolean v20, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v20, :cond_0

    .line 1481
    sub-int v20, v12, v19

    add-int/lit8 v20, v20, -0x1

    mul-int/lit8 v15, v20, 0x28

    .line 1485
    :cond_0
    if-eqz p1, :cond_6

    .line 1486
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v10, :cond_3

    .line 1487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1488
    .local v9, child:Landroid/view/View;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1489
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    const/16 v20, 0x0

    const/16 v21, 0x0

    int-to-float v0, v14

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1490
    .local v17, rotateItem:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v20, 0x10e

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1493
    sget-boolean v20, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v20, :cond_2

    .line 1494
    move/from16 v0, v19

    if-lt v13, v0, :cond_1

    if-ge v13, v12, :cond_1

    .line 1495
    sub-int v20, v13, v19

    mul-int/lit8 v20, v20, 0x28

    add-int/lit8 v20, v20, 0x3c

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 1496
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1503
    :cond_1
    :goto_1
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1486
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1499
    :cond_2
    mul-int/lit8 v20, v13, 0x28

    add-int/lit8 v20, v20, 0x3c

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 1500
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 1505
    .end local v9           #child:Landroid/view/View;
    .end local v17           #rotateItem:Landroid/view/animation/TranslateAnimation;
    :cond_3
    const v20, 0x7f0d0047

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1506
    .local v8, bg:Landroid/view/View;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1507
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppBgHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1508
    .local v7, animation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v20, 0x10e

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1509
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/16 v20, 0x0

    const/high16 v21, 0x3f80

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v5, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1510
    .local v5, alphaAni:Landroid/view/animation/AlphaAnimation;
    add-int/lit16 v0, v15, 0x14a

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1511
    new-instance v6, Landroid/view/animation/AnimationSet;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-direct {v6, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1512
    .local v6, aniSet:Landroid/view/animation/AnimationSet;
    invoke-virtual {v6, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1513
    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1514
    invoke-virtual {v8, v6}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1515
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1518
    const v20, 0x7f0d004a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1519
    .local v11, emptyBtnContainer:Landroid/view/View;
    if-eqz v11, :cond_4

    .line 1520
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1521
    invoke-virtual {v11, v6}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1522
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1525
    :cond_4
    new-instance v20, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1649
    :cond_5
    :goto_2
    return-void

    .line 1554
    .end local v5           #alphaAni:Landroid/view/animation/AlphaAnimation;
    .end local v6           #aniSet:Landroid/view/animation/AnimationSet;
    .end local v7           #animation:Landroid/view/animation/TranslateAnimation;
    .end local v8           #bg:Landroid/view/View;
    .end local v11           #emptyBtnContainer:Landroid/view/View;
    .end local v13           #i:I
    :cond_6
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_3
    if-ge v13, v10, :cond_9

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1556
    .restart local v9       #child:Landroid/view/View;
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1557
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    int-to-float v0, v14

    move/from16 v23, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1558
    .restart local v17       #rotateItem:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v20, 0x10e

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1561
    sget-boolean v20, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v20, :cond_8

    .line 1562
    move/from16 v0, v19

    if-lt v13, v0, :cond_7

    if-ge v13, v12, :cond_7

    .line 1563
    sub-int v20, v12, v13

    mul-int/lit8 v20, v20, 0x28

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 1564
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1609
    :cond_7
    :goto_4
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1554
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1586
    :cond_8
    sub-int v20, v10, v13

    add-int/lit8 v20, v20, -0x1

    mul-int/lit8 v20, v20, 0x28

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 1587
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4

    .line 1611
    .end local v9           #child:Landroid/view/View;
    .end local v17           #rotateItem:Landroid/view/animation/TranslateAnimation;
    :cond_9
    const v20, 0x7f0d0047

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1612
    .restart local v8       #bg:Landroid/view/View;
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1613
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1614
    .restart local v7       #animation:Landroid/view/animation/TranslateAnimation;
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v20, 0x3f80

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v5, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1615
    .restart local v5       #alphaAni:Landroid/view/animation/AlphaAnimation;
    new-instance v6, Landroid/view/animation/AnimationSet;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-direct {v6, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1616
    .restart local v6       #aniSet:Landroid/view/animation/AnimationSet;
    invoke-virtual {v6, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1617
    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1619
    const-wide/16 v20, 0x10e

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1620
    int-to-long v0, v15

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 1622
    new-instance v20, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1638
    invoke-virtual {v8, v6}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1639
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1642
    const v20, 0x7f0d004a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1643
    .restart local v11       #emptyBtnContainer:Landroid/view/View;
    if-eqz v11, :cond_5

    .line 1644
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1645
    invoke-virtual {v11, v6}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1646
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method public setStatusBarHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1467
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    .line 1468
    return-void
.end method
