.class Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter$1;
.super Ljava/lang/Object;
.source "AbstractTabRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->createCloseButtonClickListener(Landroid/widget/ImageButton;Lde/mrapp/android/tabswitcher/Tab;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;

.field final synthetic val$closeButton:Landroid/widget/ImageButton;

.field final synthetic val$tab:Lde/mrapp/android/tabswitcher/Tab;


# direct methods
.method constructor <init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;Lde/mrapp/android/tabswitcher/Tab;Landroid/widget/ImageButton;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter$1;->this$0:Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;

    iput-object p2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter$1;->val$tab:Lde/mrapp/android/tabswitcher/Tab;

    iput-object p3, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter$1;->val$closeButton:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 259
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter$1;->this$0:Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter$1;->val$tab:Lde/mrapp/android/tabswitcher/Tab;

    invoke-virtual {p1, v0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getTabItem(Lde/mrapp/android/tabswitcher/Tab;)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 262
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object p1

    .line 264
    sget-object v0, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    if-eq p1, v0, :cond_0

    sget-object v0, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START_ATOP:Lde/mrapp/android/tabswitcher/model/State;

    if-ne p1, v0, :cond_1

    .line 265
    :cond_0
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter$1;->this$0:Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter$1;->val$tab:Lde/mrapp/android/tabswitcher/Tab;

    invoke-static {p1, v0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->access$000(Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;Lde/mrapp/android/tabswitcher/Tab;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 266
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter$1;->val$closeButton:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter$1;->this$0:Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;

    invoke-static {p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->access$100(Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;)Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter$1;->val$tab:Lde/mrapp/android/tabswitcher/Tab;

    invoke-virtual {p1, v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->removeTab(Lde/mrapp/android/tabswitcher/Tab;)V

    :cond_1
    return-void
.end method
