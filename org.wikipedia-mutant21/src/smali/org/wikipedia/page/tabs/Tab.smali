.class public Lorg/wikipedia/page/tabs/Tab;
.super Lorg/wikipedia/model/BaseModel;
.source "Tab.java"


# instance fields
.field private final backStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/page/PageBackStackItem;",
            ">;"
        }
    .end annotation
.end field

.field private backStackPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lorg/wikipedia/model/BaseModel;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lorg/wikipedia/page/tabs/Tab;->backStackPosition:I

    return-void
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .line 41
    invoke-virtual {p0}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPosition()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canGoForward()Z
    .locals 3

    .line 45
    invoke-virtual {p0}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPosition()I

    move-result v0

    iget-object v1, p0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public clearBackstack()V
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, -0x1

    .line 71
    iput v0, p0, Lorg/wikipedia/page/tabs/Tab;->backStackPosition:I

    return-void
.end method

.method public getBackStack()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/PageBackStackItem;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    return-object v0
.end method

.method public getBackStackPosition()I
    .locals 1

    .line 28
    iget v0, p0, Lorg/wikipedia/page/tabs/Tab;->backStackPosition:I

    if-gez v0, :cond_0

    .line 29
    iget-object v0, p0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/wikipedia/page/tabs/Tab;->backStackPosition:I

    .line 31
    :cond_0
    iget v0, p0, Lorg/wikipedia/page/tabs/Tab;->backStackPosition:I

    return v0
.end method

.method public getBackStackPositionTitle()Lorg/wikipedia/page/PageTitle;
    .locals 2

    .line 24
    iget-object v0, p0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    invoke-virtual {p0}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/page/PageBackStackItem;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageBackStackItem;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public moveBack()V
    .locals 1

    .line 55
    invoke-virtual {p0}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 56
    iget v0, p0, Lorg/wikipedia/page/tabs/Tab;->backStackPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/wikipedia/page/tabs/Tab;->backStackPosition:I

    :cond_0
    return-void
.end method

.method public moveForward()V
    .locals 2

    .line 49
    invoke-virtual {p0}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPosition()I

    move-result v0

    invoke-virtual {p0}, Lorg/wikipedia/page/tabs/Tab;->getBackStack()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 50
    iget v0, p0, Lorg/wikipedia/page/tabs/Tab;->backStackPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/wikipedia/page/tabs/Tab;->backStackPosition:I

    :cond_0
    return-void
.end method

.method public pushBackStackItem(Lorg/wikipedia/page/PageBackStackItem;)V
    .locals 2

    .line 62
    :goto_0
    iget-object v0, p0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    invoke-virtual {p0}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object p1, p0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/wikipedia/page/tabs/Tab;->backStackPosition:I

    return-void
.end method

.method public setBackStackPositionTitle(Lorg/wikipedia/page/PageTitle;)V
    .locals 2

    .line 35
    invoke-virtual {p0}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPositionTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    invoke-virtual {p0}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/page/PageBackStackItem;

    invoke-virtual {v0, p1}, Lorg/wikipedia/page/PageBackStackItem;->setTitle(Lorg/wikipedia/page/PageTitle;)V

    :cond_0
    return-void
.end method

.method public squashBackstack()V
    .locals 2

    .line 75
    iget-object v0, p0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/page/PageBackStackItem;

    .line 79
    iget-object v1, p0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 80
    iget-object v1, p0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lorg/wikipedia/page/tabs/Tab;->backStackPosition:I

    return-void
.end method
