.class Lorg/wikipedia/page/tabs/TabActivity$TabListener;
.super Ljava/lang/Object;
.source "TabActivity.java"

# interfaces
.implements Lde/mrapp/android/tabswitcher/TabSwitcherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/page/tabs/TabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/page/tabs/TabActivity;


# direct methods
.method private constructor <init>(Lorg/wikipedia/page/tabs/TabActivity;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity$TabListener;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/page/tabs/TabActivity;Lorg/wikipedia/page/tabs/TabActivity$1;)V
    .locals 0

    .line 338
    invoke-direct {p0, p1}, Lorg/wikipedia/page/tabs/TabActivity$TabListener;-><init>(Lorg/wikipedia/page/tabs/TabActivity;)V

    return-void
.end method


# virtual methods
.method public onAllTabsRemoved(Lde/mrapp/android/tabswitcher/TabSwitcher;[Lde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V
    .locals 1

    const-string p1, "All tabs removed."

    .line 387
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    .line 388
    new-instance p1, Ljava/util/ArrayList;

    iget-object p3, p0, Lorg/wikipedia/page/tabs/TabActivity$TabListener;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    invoke-static {p3}, Lorg/wikipedia/page/tabs/TabActivity;->access$300(Lorg/wikipedia/page/tabs/TabActivity;)Lorg/wikipedia/WikipediaApp;

    move-result-object p3

    invoke-virtual {p3}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 390
    iget-object p3, p0, Lorg/wikipedia/page/tabs/TabActivity$TabListener;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    invoke-static {p3}, Lorg/wikipedia/page/tabs/TabActivity;->access$300(Lorg/wikipedia/page/tabs/TabActivity;)Lorg/wikipedia/WikipediaApp;

    move-result-object p3

    invoke-virtual {p3}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 391
    iget-object p3, p0, Lorg/wikipedia/page/tabs/TabActivity$TabListener;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    iget-object p3, p3, Lorg/wikipedia/page/tabs/TabActivity;->tabCountsView:Lorg/wikipedia/views/TabCountsView;

    invoke-virtual {p3}, Lorg/wikipedia/views/TabCountsView;->updateTabCount()V

    .line 392
    iget-object p3, p0, Lorg/wikipedia/page/tabs/TabActivity$TabListener;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    const/16 v0, 0xa

    invoke-virtual {p3, v0}, Landroid/app/Activity;->setResult(I)V

    .line 393
    iget-object p3, p0, Lorg/wikipedia/page/tabs/TabActivity$TabListener;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    invoke-static {p3, p2, p1}, Lorg/wikipedia/page/tabs/TabActivity;->access$900(Lorg/wikipedia/page/tabs/TabActivity;[Lde/mrapp/android/tabswitcher/Tab;Ljava/util/List;)V

    .line 394
    iget-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity$TabListener;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lorg/wikipedia/page/tabs/TabActivity;->access$502(Lorg/wikipedia/page/tabs/TabActivity;J)J

    return-void
.end method

.method public onSelectionChanged(Lde/mrapp/android/tabswitcher/TabSwitcher;ILde/mrapp/android/tabswitcher/Tab;)V
    .locals 3

    .line 345
    iget-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity$TabListener;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    invoke-static {p1}, Lorg/wikipedia/page/tabs/TabActivity;->access$300(Lorg/wikipedia/page/tabs/TabActivity;)Lorg/wikipedia/WikipediaApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    .line 346
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tab selected: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    .line 348
    iget-object p2, p0, Lorg/wikipedia/page/tabs/TabActivity$TabListener;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    invoke-static {p2}, Lorg/wikipedia/page/tabs/TabActivity;->access$300(Lorg/wikipedia/page/tabs/TabActivity;)Lorg/wikipedia/WikipediaApp;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_0

    .line 349
    iget-object p2, p0, Lorg/wikipedia/page/tabs/TabActivity$TabListener;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    invoke-static {p2}, Lorg/wikipedia/page/tabs/TabActivity;->access$300(Lorg/wikipedia/page/tabs/TabActivity;)Lorg/wikipedia/WikipediaApp;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/page/tabs/Tab;

    .line 350
    iget-object p3, p0, Lorg/wikipedia/page/tabs/TabActivity$TabListener;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    invoke-static {p3}, Lorg/wikipedia/page/tabs/TabActivity;->access$300(Lorg/wikipedia/page/tabs/TabActivity;)Lorg/wikipedia/WikipediaApp;

    move-result-object p3

    invoke-virtual {p3}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_0
    iget-object p2, p0, Lorg/wikipedia/page/tabs/TabActivity$TabListener;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    iget-object p2, p2, Lorg/wikipedia/page/tabs/TabActivity;->tabCountsView:Lorg/wikipedia/views/TabCountsView;

    invoke-virtual {p2}, Lorg/wikipedia/views/TabCountsView;->updateTabCount()V

    .line 353
    iget-object p2, p0, Lorg/wikipedia/page/tabs/TabActivity$TabListener;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lorg/wikipedia/page/tabs/TabActivity;->access$402(Lorg/wikipedia/page/tabs/TabActivity;Z)Z

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-object v0, p0, Lorg/wikipedia/page/tabs/TabActivity$TabListener;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    invoke-static {v0}, Lorg/wikipedia/page/tabs/TabActivity;->access$500(Lorg/wikipedia/page/tabs/TabActivity;)J

    move-result-wide v0

    sub-long/2addr p2, v0

    const-wide/16 v0, 0xfa

    cmp-long v2, p2, v0

    if-lez v2, :cond_2

    .line 357
    iget-object p2, p0, Lorg/wikipedia/page/tabs/TabActivity$TabListener;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    invoke-static {p2}, Lorg/wikipedia/page/tabs/TabActivity;->access$600(Lorg/wikipedia/page/tabs/TabActivity;)Lorg/wikipedia/analytics/TabFunnel;

    move-result-object p2

    iget-object p3, p0, Lorg/wikipedia/page/tabs/TabActivity$TabListener;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    invoke-static {p3}, Lorg/wikipedia/page/tabs/TabActivity;->access$300(Lorg/wikipedia/page/tabs/TabActivity;)Lorg/wikipedia/WikipediaApp;

    move-result-object p3

    invoke-virtual {p3}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    move-result p3

    invoke-virtual {p2, p3, p1}, Lorg/wikipedia/analytics/TabFunnel;->logSelect(II)V

    .line 358
    iget-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity$TabListener;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    invoke-static {p1}, Lorg/wikipedia/page/tabs/TabActivity;->access$700(Lorg/wikipedia/page/tabs/TabActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 359
    iget-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity$TabListener;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    .line 361
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity$TabListener;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    invoke-static {p1}, Lorg/wikipedia/page/PageActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 363
    :goto_0
    iget-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity$TabListener;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method public onSwitcherHidden(Lde/mrapp/android/tabswitcher/TabSwitcher;)V
    .locals 0

    return-void
.end method

.method public onSwitcherShown(Lde/mrapp/android/tabswitcher/TabSwitcher;)V
    .locals 0

    return-void
.end method

.method public onTabAdded(Lde/mrapp/android/tabswitcher/TabSwitcher;ILde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V
    .locals 0

    .line 369
    iget-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity$TabListener;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    iget-object p1, p1, Lorg/wikipedia/page/tabs/TabActivity;->tabCountsView:Lorg/wikipedia/views/TabCountsView;

    invoke-virtual {p1}, Lorg/wikipedia/views/TabCountsView;->updateTabCount()V

    .line 370
    iget-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity$TabListener;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lorg/wikipedia/page/tabs/TabActivity;->access$502(Lorg/wikipedia/page/tabs/TabActivity;J)J

    return-void
.end method

.method public onTabRemoved(Lde/mrapp/android/tabswitcher/TabSwitcher;ILde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V
    .locals 2

    .line 375
    iget-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity$TabListener;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    invoke-static {p1}, Lorg/wikipedia/page/tabs/TabActivity;->access$300(Lorg/wikipedia/page/tabs/TabActivity;)Lorg/wikipedia/WikipediaApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    .line 376
    iget-object p4, p0, Lorg/wikipedia/page/tabs/TabActivity$TabListener;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    invoke-static {p4}, Lorg/wikipedia/page/tabs/TabActivity;->access$300(Lorg/wikipedia/page/tabs/TabActivity;)Lorg/wikipedia/WikipediaApp;

    move-result-object p4

    invoke-virtual {p4}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/wikipedia/page/tabs/Tab;

    .line 378
    iget-object v0, p0, Lorg/wikipedia/page/tabs/TabActivity$TabListener;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    invoke-static {v0}, Lorg/wikipedia/page/tabs/TabActivity;->access$600(Lorg/wikipedia/page/tabs/TabActivity;)Lorg/wikipedia/analytics/TabFunnel;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/page/tabs/TabActivity$TabListener;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    invoke-static {v1}, Lorg/wikipedia/page/tabs/TabActivity;->access$300(Lorg/wikipedia/page/tabs/TabActivity;)Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/wikipedia/analytics/TabFunnel;->logClose(II)V

    .line 379
    iget-object v0, p0, Lorg/wikipedia/page/tabs/TabActivity$TabListener;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    iget-object v0, v0, Lorg/wikipedia/page/tabs/TabActivity;->tabCountsView:Lorg/wikipedia/views/TabCountsView;

    invoke-virtual {v0}, Lorg/wikipedia/views/TabCountsView;->updateTabCount()V

    .line 380
    iget-object v0, p0, Lorg/wikipedia/page/tabs/TabActivity$TabListener;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 381
    iget-object v0, p0, Lorg/wikipedia/page/tabs/TabActivity$TabListener;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    invoke-static {v0, p3, p2, p4, p1}, Lorg/wikipedia/page/tabs/TabActivity;->access$800(Lorg/wikipedia/page/tabs/TabActivity;Lde/mrapp/android/tabswitcher/Tab;ILorg/wikipedia/page/tabs/Tab;I)V

    .line 382
    iget-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity$TabListener;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lorg/wikipedia/page/tabs/TabActivity;->access$502(Lorg/wikipedia/page/tabs/TabActivity;J)J

    return-void
.end method
