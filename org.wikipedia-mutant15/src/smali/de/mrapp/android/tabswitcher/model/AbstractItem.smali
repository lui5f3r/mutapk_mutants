.class public abstract Lde/mrapp/android/tabswitcher/model/AbstractItem;
.super Ljava/lang/Object;
.source "AbstractItem.java"


# instance fields
.field private final index:I

.field private tag:Lde/mrapp/android/tabswitcher/model/Tag;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x0

    const-string v2, "The index must be at least 0"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 55
    iput p1, p0, Lde/mrapp/android/tabswitcher/model/AbstractItem;->index:I

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/AbstractItem;->view:Landroid/view/View;

    .line 57
    new-instance p1, Lde/mrapp/android/tabswitcher/model/Tag;

    invoke-direct {p1}, Lde/mrapp/android/tabswitcher/model/Tag;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/AbstractItem;->tag:Lde/mrapp/android/tabswitcher/model/Tag;

    return-void
.end method


# virtual methods
.method public final getIndex()I
    .locals 1

    .line 67
    iget v0, p0, Lde/mrapp/android/tabswitcher/model/AbstractItem;->index:I

    return v0
.end method

.method public final getTag()Lde/mrapp/android/tabswitcher/model/Tag;
    .locals 1

    .line 98
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/AbstractItem;->tag:Lde/mrapp/android/tabswitcher/model/Tag;

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 77
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/AbstractItem;->view:Landroid/view/View;

    return-object v0
.end method

.method public isInflated()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/AbstractItem;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isVisible()Z
    .locals 2

    .line 119
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/AbstractItem;->tag:Lde/mrapp/android/tabswitcher/model/Tag;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/model/State;->HIDDEN:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/AbstractItem;->tag:Lde/mrapp/android/tabswitcher/model/Tag;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final setTag(Lde/mrapp/android/tabswitcher/model/Tag;)V
    .locals 2

    .line 109
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The tag may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/AbstractItem;->tag:Lde/mrapp/android/tabswitcher/model/Tag;

    return-void
.end method

.method public final setView(Landroid/view/View;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/AbstractItem;->view:Landroid/view/View;

    return-void
.end method
