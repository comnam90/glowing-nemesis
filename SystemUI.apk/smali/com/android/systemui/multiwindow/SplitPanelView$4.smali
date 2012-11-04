.class Lcom/android/systemui/multiwindow/SplitPanelView$4;
.super Ljava/lang/Object;
.source "SplitPanelView.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


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
    .line 520
    iput-object p1, p0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 17
    .parameter "targetView"
    .parameter "event"

    .prologue
    .line 522
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSourceView:Landroid/view/View;
    invoke-static {v15}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1000(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/View;

    move-result-object v15

    if-nez v15, :cond_1

    .line 523
    const/4 v8, 0x0

    .line 742
    :cond_0
    :goto_0
    return v8

    .line 526
    :cond_1
    const/4 v8, 0x0

    .line 527
    .local v8, result:Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    .line 529
    .local v2, dragAction:I
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 534
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSourceView:Landroid/view/View;
    invoke-static {v15}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1000(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 535
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1100(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/ViewGroup;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1200(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/ViewGroup;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 537
    :cond_2
    const v15, 0x7f0d00f6

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 538
    .local v13, v:Landroid/view/View;
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/view/View;->setVisibility(I)V

    .line 542
    .end local v13           #v:Landroid/view/View;
    :cond_3
    const/4 v8, 0x1

    .line 543
    goto :goto_0

    .line 546
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSourceView:Landroid/view/View;
    invoke-static {v15}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1000(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 547
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSourceView:Landroid/view/View;
    invoke-static {v15}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1000(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSmallViews:Landroid/view/ViewGroup;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1300(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/ViewGroup;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 551
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1100(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/ViewGroup;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1200(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/ViewGroup;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 553
    :cond_4
    const v15, 0x7f0d00f7

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 554
    .restart local v13       #v:Landroid/view/View;
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/view/View;->setVisibility(I)V

    .line 584
    .end local v13           #v:Landroid/view/View;
    :cond_5
    :goto_1
    const/4 v8, 0x1

    .line 585
    goto/16 :goto_0

    .line 557
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSourceView:Landroid/view/View;
    invoke-static {v15}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1000(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1100(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/ViewGroup;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSourceView:Landroid/view/View;
    invoke-static {v15}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1000(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1200(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/ViewGroup;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 562
    :cond_7
    const/4 v13, 0x0

    .line 563
    .restart local v13       #v:Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1100(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/ViewGroup;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 564
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;
    invoke-static {v15}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1100(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/ViewGroup;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 565
    .local v3, i:I
    if-nez v3, :cond_9

    .line 566
    const v15, 0x7f0d00f9

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 578
    .end local v3           #i:I
    :cond_8
    :goto_2
    if-eqz v13, :cond_5

    .line 579
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 567
    .restart local v3       #i:I
    :cond_9
    const/4 v15, 0x1

    if-ne v3, v15, :cond_8

    .line 568
    const v15, 0x7f0d00fb

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    goto :goto_2

    .line 570
    .end local v3           #i:I
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1200(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/ViewGroup;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 571
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;
    invoke-static {v15}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1200(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/ViewGroup;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 572
    .restart local v3       #i:I
    if-nez v3, :cond_b

    .line 573
    const v15, 0x7f0d00fa

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    goto :goto_2

    .line 574
    :cond_b
    const/4 v15, 0x1

    if-ne v3, v15, :cond_8

    .line 575
    const v15, 0x7f0d00fb

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    goto :goto_2

    .line 588
    .end local v3           #i:I
    .end local v13           #v:Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSourceView:Landroid/view/View;
    invoke-static {v15}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1000(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    .line 589
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSourceView:Landroid/view/View;
    invoke-static {v15}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1000(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSmallViews:Landroid/view/ViewGroup;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1300(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/ViewGroup;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 593
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1100(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/ViewGroup;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1200(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/ViewGroup;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 595
    :cond_c
    const v15, 0x7f0d00f7

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 596
    .restart local v13       #v:Landroid/view/View;
    const/16 v15, 0x8

    invoke-virtual {v13, v15}, Landroid/view/View;->setVisibility(I)V

    .line 626
    .end local v13           #v:Landroid/view/View;
    :cond_d
    :goto_3
    const/4 v8, 0x1

    .line 627
    goto/16 :goto_0

    .line 599
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSourceView:Landroid/view/View;
    invoke-static {v15}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1000(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1100(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/ViewGroup;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSourceView:Landroid/view/View;
    invoke-static {v15}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1000(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1200(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/ViewGroup;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 604
    :cond_f
    const/4 v13, 0x0

    .line 605
    .restart local v13       #v:Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1100(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/ViewGroup;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 606
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;
    invoke-static {v15}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1100(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/ViewGroup;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 607
    .restart local v3       #i:I
    if-nez v3, :cond_11

    .line 608
    const v15, 0x7f0d00f9

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 620
    .end local v3           #i:I
    :cond_10
    :goto_4
    if-eqz v13, :cond_d

    .line 621
    const/4 v15, 0x4

    invoke-virtual {v13, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 609
    .restart local v3       #i:I
    :cond_11
    const/4 v15, 0x1

    if-ne v3, v15, :cond_10

    .line 610
    const v15, 0x7f0d00fb

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    goto :goto_4

    .line 612
    .end local v3           #i:I
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1200(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/ViewGroup;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 613
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;
    invoke-static {v15}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1200(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/ViewGroup;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 614
    .restart local v3       #i:I
    if-nez v3, :cond_13

    .line 615
    const v15, 0x7f0d00fa

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    goto :goto_4

    .line 616
    :cond_13
    const/4 v15, 0x1

    if-ne v3, v15, :cond_10

    .line 617
    const v15, 0x7f0d00fb

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    goto :goto_4

    .line 632
    .end local v3           #i:I
    .end local v13           #v:Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSourceView:Landroid/view/View;
    invoke-static {v15}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1000(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 633
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1100(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/ViewGroup;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1200(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/ViewGroup;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 635
    :cond_14
    const v15, 0x7f0d00f6

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 636
    .restart local v13       #v:Landroid/view/View;
    if-eqz v13, :cond_15

    .line 637
    const/16 v15, 0x8

    invoke-virtual {v13, v15}, Landroid/view/View;->setVisibility(I)V

    .line 642
    .end local v13           #v:Landroid/view/View;
    :cond_15
    const/4 v8, 0x1

    .line 643
    goto/16 :goto_0

    .line 647
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSmallViews:Landroid/view/ViewGroup;
    invoke-static {v15}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1300(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/ViewGroup;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v15

    if-ltz v15, :cond_16

    .line 648
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 651
    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSourceView:Landroid/view/View;
    invoke-static {v15}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1000(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 652
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSourceView:Landroid/view/View;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1000(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_18

    .line 656
    const v15, 0x7f0d00f8

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 657
    .local v6, lrbVg:Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 658
    .local v5, lrbSize:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    if-ge v3, v5, :cond_17

    .line 659
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 660
    .restart local v13       #v:Landroid/view/View;
    const/4 v15, 0x4

    invoke-virtual {v13, v15}, Landroid/view/View;->setVisibility(I)V

    .line 658
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 664
    .end local v13           #v:Landroid/view/View;
    :cond_17
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSourceView:Landroid/view/View;
    invoke-static {v15}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1000(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 665
    .local v7, parent:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSourceView:Landroid/view/View;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1000(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v16

    #setter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSourceIndex:I
    invoke-static/range {v15 .. v16}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1402(Lcom/android/systemui/multiwindow/SplitPanelView;I)I

    .line 666
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v16

    #setter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mTargetIndex:I
    invoke-static/range {v15 .. v16}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1502(Lcom/android/systemui/multiwindow/SplitPanelView;I)I

    .line 668
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSourceView:Landroid/view/View;
    invoke-static {v15}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1000(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v7, v15}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 669
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSourceView:Landroid/view/View;
    invoke-static {v15}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1000(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mTargetIndex:I
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1500(Lcom/android/systemui/multiwindow/SplitPanelView;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 670
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 671
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSourceIndex:I
    invoke-static {v15}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1400(Lcom/android/systemui/multiwindow/SplitPanelView;)I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 673
    const/4 v8, 0x1

    .line 674
    goto/16 :goto_0

    .line 676
    .end local v3           #i:I
    .end local v5           #lrbSize:I
    .end local v6           #lrbVg:Landroid/view/ViewGroup;
    .end local v7           #parent:Landroid/view/ViewGroup;
    :cond_18
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSourceView:Landroid/view/View;
    invoke-static {v15}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1000(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 677
    .local v9, sourceParent:Landroid/view/ViewGroup;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 679
    .local v11, targetParent:Landroid/view/ViewGroup;
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 683
    const v15, 0x7f0d00f8

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 684
    .restart local v6       #lrbVg:Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 685
    .restart local v5       #lrbSize:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_6
    if-ge v3, v5, :cond_19

    .line 686
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 687
    .restart local v13       #v:Landroid/view/View;
    const/4 v15, 0x4

    invoke-virtual {v13, v15}, Landroid/view/View;->setVisibility(I)V

    .line 685
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 691
    .end local v13           #v:Landroid/view/View;
    :cond_19
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSourceView:Landroid/view/View;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1000(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v16

    #setter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSourceIndex:I
    invoke-static/range {v15 .. v16}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1402(Lcom/android/systemui/multiwindow/SplitPanelView;I)I

    .line 692
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v16

    #setter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mTargetIndex:I
    invoke-static/range {v15 .. v16}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1502(Lcom/android/systemui/multiwindow/SplitPanelView;I)I

    .line 694
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSourceView:Landroid/view/View;
    invoke-static {v15}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1000(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 695
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSourceView:Landroid/view/View;
    invoke-static {v15}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1000(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mTargetIndex:I
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1500(Lcom/android/systemui/multiwindow/SplitPanelView;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 696
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 697
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSourceIndex:I
    invoke-static {v15}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1400(Lcom/android/systemui/multiwindow/SplitPanelView;)I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 699
    const/4 v8, 0x1

    .line 700
    goto/16 :goto_0

    .line 705
    .end local v3           #i:I
    .end local v5           #lrbSize:I
    .end local v6           #lrbVg:Landroid/view/ViewGroup;
    :cond_1a
    const v15, 0x7f0d00f7

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 706
    .local v14, view:Landroid/view/View;
    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 709
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSourceView:Landroid/view/View;
    invoke-static {v15}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1000(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 710
    .local v10, sourceTask:Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;
    invoke-static {v15}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1100(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/ViewGroup;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 711
    .local v1, childCount:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_7
    if-ge v3, v1, :cond_1c

    .line 712
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;
    invoke-static {v15}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1100(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/ViewGroup;

    move-result-object v15

    invoke-virtual {v15, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 714
    .restart local v13       #v:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 715
    .local v12, targetTask:Landroid/app/ActivityManager$RunningTaskInfo;
    if-ne v10, v12, :cond_1b

    .line 716
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 711
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 719
    .end local v12           #targetTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v13           #v:Landroid/view/View;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;
    invoke-static {v15}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1200(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/ViewGroup;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 720
    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_1e

    .line 721
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitPanelView$4;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;
    invoke-static {v15}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1200(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/ViewGroup;

    move-result-object v15

    invoke-virtual {v15, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 723
    .restart local v13       #v:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 724
    .restart local v12       #targetTask:Landroid/app/ActivityManager$RunningTaskInfo;
    if-ne v10, v12, :cond_1d

    .line 725
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 720
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 729
    .end local v12           #targetTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v13           #v:Landroid/view/View;
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 731
    .restart local v12       #targetTask:Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1f

    .line 732
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 733
    const v15, 0x7f0d00f5

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 734
    .local v4, iv:Landroid/widget/ImageView;
    iget-object v15, v10, Landroid/app/ActivityManager$RunningTaskInfo;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 736
    .end local v4           #iv:Landroid/widget/ImageView;
    :cond_1f
    const/4 v8, 0x1

    .line 737
    goto/16 :goto_0

    .line 529
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
