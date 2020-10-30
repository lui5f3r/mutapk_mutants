.class Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;
.super Ljava/lang/Object;
.source "PhoneTabSwitcherLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createSwipeLayoutListener([Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

.field final synthetic val$addedItems:[Lde/mrapp/android/tabswitcher/model/AbstractItem;

.field final synthetic val$swipeAnimation:Lde/mrapp/android/tabswitcher/SwipeAnimation;


# direct methods
.method constructor <init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;[Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)V
    .locals 0

    .line 1460
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    iput-object p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->val$addedItems:[Lde/mrapp/android/tabswitcher/model/AbstractItem;

    iput-object p3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->val$swipeAnimation:Lde/mrapp/android/tabswitcher/SwipeAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 14

    .line 1464
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-static {v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$2700(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v0

    .line 1465
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->val$addedItems:[Lde/mrapp/android/tabswitcher/model/AbstractItem;

    array-length v2, v2

    sub-int v2, v0, v2

    .line 1466
    invoke-virtual {v1, v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateAttachedPosition(I)F

    move-result v1

    .line 1467
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-virtual {v2, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateAttachedPosition(I)F

    move-result v7

    .line 1470
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->val$addedItems:[Lde/mrapp/android/tabswitcher/model/AbstractItem;

    array-length v3, v2

    sub-int v3, v0, v3

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, 0x0

    const/4 v4, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v3, :cond_0

    .line 1471
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-static {v0, v4, v10}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$2800(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;IF)[Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v0

    goto/16 :goto_8

    .line 1473
    :cond_0
    aget-object v2, v2, v12

    .line 1474
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_2

    add-int/lit8 v3, v2, -0x1

    goto :goto_1

    .line 1476
    :cond_2
    iget-object v3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->val$addedItems:[Lde/mrapp/android/tabswitcher/model/AbstractItem;

    array-length v5, v3

    add-int/2addr v5, v2

    sub-int/2addr v5, v13

    add-int/lit8 v8, v0, -0x1

    if-ge v5, v8, :cond_3

    array-length v3, v3

    add-int/2addr v3, v2

    goto :goto_1

    :cond_3
    const/4 v3, -0x1

    :goto_1
    if-eq v3, v4, :cond_4

    .line 1479
    iget-object v4, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    .line 1480
    invoke-static {v4}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$2900(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v4

    iget-object v5, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-static {v5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$100(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v3

    move-object v5, v3

    goto :goto_2

    :cond_4
    move-object v5, v11

    :goto_2
    if-eqz v5, :cond_5

    .line 1482
    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v3

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v3

    goto :goto_3

    :cond_5
    move-object v3, v11

    :goto_3
    if-eqz v3, :cond_b

    .line 1484
    sget-object v4, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v3, v4, :cond_6

    goto :goto_6

    .line 1486
    :cond_6
    sget-object v4, Lde/mrapp/android/tabswitcher/model/State;->STACKED_END:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v3, v4, :cond_7

    .line 1487
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->val$addedItems:[Lde/mrapp/android/tabswitcher/model/AbstractItem;

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->val$swipeAnimation:Lde/mrapp/android/tabswitcher/SwipeAnimation;

    invoke-static {v0, v12, v1, v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$3000(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Z[Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)[Lde/mrapp/android/tabswitcher/model/AbstractItem;

    goto :goto_7

    .line 1488
    :cond_7
    sget-object v4, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    if-eq v3, v4, :cond_9

    sget-object v4, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START_ATOP:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v3, v4, :cond_8

    if-gtz v2, :cond_9

    const/4 v2, 0x2

    if-gt v0, v2, :cond_8

    goto :goto_4

    .line 1494
    :cond_8
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->val$addedItems:[Lde/mrapp/android/tabswitcher/model/AbstractItem;

    invoke-static {v0, v1, v5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$3200(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;[Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/model/AbstractItem;)[Lde/mrapp/android/tabswitcher/model/AbstractItem;

    goto :goto_7

    .line 1490
    :cond_9
    :goto_4
    iget-object v3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->val$addedItems:[Lde/mrapp/android/tabswitcher/model/AbstractItem;

    cmpl-float v1, v7, v1

    if-eqz v1, :cond_a

    const/4 v8, 0x1

    goto :goto_5

    :cond_a
    const/4 v8, 0x0

    :goto_5
    iget-object v9, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->val$swipeAnimation:Lde/mrapp/android/tabswitcher/SwipeAnimation;

    move-object v4, v0

    invoke-static/range {v3 .. v9}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$3100(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;[Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/model/AbstractItem;ZFZLde/mrapp/android/tabswitcher/SwipeAnimation;)[Lde/mrapp/android/tabswitcher/model/AbstractItem;

    goto :goto_8

    .line 1485
    :cond_b
    :goto_6
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->val$addedItems:[Lde/mrapp/android/tabswitcher/model/AbstractItem;

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->val$swipeAnimation:Lde/mrapp/android/tabswitcher/SwipeAnimation;

    invoke-static {v0, v13, v1, v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$3000(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Z[Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)[Lde/mrapp/android/tabswitcher/model/AbstractItem;

    :goto_7
    move-object v0, v1

    .line 1500
    :goto_8
    array-length v1, v0

    :goto_9
    if-ge v12, v1, :cond_f

    aget-object v3, v0, v12

    .line 1501
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v8

    if-eqz v11, :cond_d

    .line 1503
    invoke-virtual {v8}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v2

    invoke-virtual {v11}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v4

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_c

    goto :goto_a

    .line 1530
    :cond_c
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-static {v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$100(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object v2

    invoke-virtual {v2, v3}, Lde/mrapp/android/util/view/AttachedViewRecycler;->remove(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 1504
    :cond_d
    :goto_a
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-static {v2, v3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$3300(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;->onGlobalLayout()V

    .line 1505
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getView()Landroid/view/View;

    move-result-object v2

    .line 1506
    sget v4, Lde/mrapp/android/tabswitcher/R$id;->tag_properties:I

    invoke-virtual {v2, v4, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1507
    iget-object v4, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-static {v4}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$3400(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1508
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-static {v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$3500(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)F

    move-result v2

    .line 1509
    iget-object v4, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-static {v4}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$3600(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v4

    invoke-interface {v4, v3, v13}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getScale(Lde/mrapp/android/tabswitcher/model/AbstractItem;Z)F

    move-result v4

    .line 1510
    iget-object v5, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-static {v5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$3800(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v5

    sget-object v6, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    iget-object v7, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-static {v7}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$3700(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v7

    sget-object v9, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    sget-object v11, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->NONE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    .line 1511
    invoke-interface {v7, v9, v3, v11}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;)F

    move-result v7

    .line 1510
    invoke-interface {v5, v6, v3, v7}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 1512
    iget-object v5, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-static {v5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$4000(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v5

    sget-object v6, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    iget-object v7, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-static {v7}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$3900(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v7

    sget-object v9, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    sget-object v11, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->NONE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    .line 1513
    invoke-interface {v7, v9, v3, v11}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;)F

    move-result v7

    .line 1512
    invoke-interface {v5, v6, v3, v7}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 1514
    iget-object v5, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-static {v5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$4100(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v5

    sget-object v6, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-virtual {v8}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v7

    invoke-interface {v5, v6, v3, v7}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 1515
    iget-object v5, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-static {v5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$4200(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v5

    sget-object v6, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    iget-object v7, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->val$swipeAnimation:Lde/mrapp/android/tabswitcher/SwipeAnimation;

    .line 1516
    invoke-virtual {v7}, Lde/mrapp/android/tabswitcher/SwipeAnimation;->getDirection()Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;

    move-result-object v7

    sget-object v9, Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;->LEFT_OR_TOP:Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;

    if-ne v7, v9, :cond_e

    mul-float v2, v2, v10

    .line 1515
    :cond_e
    invoke-interface {v5, v6, v3, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 1518
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-static {v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$4300(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    sget-object v5, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v2, v5, v3, v4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 1519
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-static {v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$4400(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    sget-object v5, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v2, v5, v3, v4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 1520
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-static {v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$4600(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    sget-object v5, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    iget-object v6, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-static {v6}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$4500(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v6

    sget-object v7, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    sget-object v9, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->SWIPE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    .line 1521
    invoke-interface {v6, v7, v3, v9}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;)F

    move-result v6

    .line 1520
    invoke-interface {v2, v5, v3, v6}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 1522
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-static {v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$4800(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    sget-object v5, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    iget-object v6, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-static {v6}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$4700(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v6

    sget-object v7, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    sget-object v9, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->SWIPE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    .line 1523
    invoke-interface {v6, v7, v3, v9}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;)F

    move-result v6

    .line 1522
    invoke-interface {v2, v5, v3, v6}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 1524
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-static {v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$5000(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    sget-object v5, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    iget-object v6, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-static {v6}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$4900(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)F

    move-result v6

    mul-float v6, v6, v4

    invoke-interface {v2, v5, v3, v6}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 1525
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-static {v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$5100(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    sget-object v5, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    iget-object v6, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    .line 1526
    invoke-static {v6}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$4900(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)F

    move-result v6

    mul-float v6, v6, v4

    invoke-interface {v2, v5, v3, v6}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 1527
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;->val$swipeAnimation:Lde/mrapp/android/tabswitcher/SwipeAnimation;

    .line 1528
    invoke-static {v2, v3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$5200(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v7

    .line 1527
    invoke-static/range {v2 .. v7}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$5300(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;ZILde/mrapp/android/tabswitcher/SwipeAnimation;Landroid/animation/Animator$AnimatorListener;)V

    :goto_b
    add-int/lit8 v12, v12, 0x1

    move-object v11, v8

    goto/16 :goto_9

    :cond_f
    return-void
.end method
