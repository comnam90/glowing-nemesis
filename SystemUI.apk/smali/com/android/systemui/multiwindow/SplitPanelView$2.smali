.class Lcom/android/systemui/multiwindow/SplitPanelView$2;
.super Ljava/lang/Object;
.source "SplitPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/SplitPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/SplitPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/SplitPanelView;)V
    .locals 0
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/android/systemui/multiwindow/SplitPanelView$2;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 483
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 501
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView$2;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mOldSplitMode:I
    invoke-static {v0}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$700(Lcom/android/systemui/multiwindow/SplitPanelView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitPanelView$2;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I
    invoke-static {v1}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$000(Lcom/android/systemui/multiwindow/SplitPanelView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView$2;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #calls: Lcom/android/systemui/multiwindow/SplitPanelView;->clearPreviousButton()V
    invoke-static {v0}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$800(Lcom/android/systemui/multiwindow/SplitPanelView;)V

    .line 503
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView$2;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #calls: Lcom/android/systemui/multiwindow/SplitPanelView;->setNextButton()V
    invoke-static {v0}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$900(Lcom/android/systemui/multiwindow/SplitPanelView;)V

    .line 504
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView$2;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitPanelView$2;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I
    invoke-static {v1}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$000(Lcom/android/systemui/multiwindow/SplitPanelView;)I

    move-result v1

    #setter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mOldSplitMode:I
    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$702(Lcom/android/systemui/multiwindow/SplitPanelView;I)I

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView$2;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/multiwindow/SplitPanelView;->makeRunningTasks(Z)Z

    .line 508
    return-void

    .line 485
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView$2;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    invoke-static {}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$200()I

    move-result v1

    #setter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I
    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$002(Lcom/android/systemui/multiwindow/SplitPanelView;I)I

    goto :goto_0

    .line 488
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView$2;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    invoke-static {}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$300()I

    move-result v1

    #setter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I
    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$002(Lcom/android/systemui/multiwindow/SplitPanelView;I)I

    goto :goto_0

    .line 491
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView$2;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    invoke-static {}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$400()I

    move-result v1

    #setter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I
    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$002(Lcom/android/systemui/multiwindow/SplitPanelView;I)I

    goto :goto_0

    .line 494
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView$2;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    invoke-static {}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$500()I

    move-result v1

    #setter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I
    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$002(Lcom/android/systemui/multiwindow/SplitPanelView;I)I

    goto :goto_0

    .line 497
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView$2;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    invoke-static {}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$600()I

    move-result v1

    #setter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I
    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$002(Lcom/android/systemui/multiwindow/SplitPanelView;I)I

    goto :goto_0

    .line 483
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d00ea
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
