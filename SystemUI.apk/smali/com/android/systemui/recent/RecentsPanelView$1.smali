.class Lcom/android/systemui/recent/RecentsPanelView$1;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsPanelView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;)V
    .locals 0
    .parameter

    .prologue
    .line 661
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$1000(Lcom/android/systemui/recent/RecentsPanelView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->setVisibility(I)V

    .line 668
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->refreshRecentTasksList()V

    .line 670
    :cond_0
    return-void
.end method
