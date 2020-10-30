.class public Lde/mrapp/android/tabswitcher/iterator/ItemIterator;
.super Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;
.source "ItemIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;
    }
.end annotation


# instance fields
.field private final model:Lde/mrapp/android/tabswitcher/model/Model;

.field private final viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/mrapp/android/util/view/AttachedViewRecycler<",
            "Lde/mrapp/android/tabswitcher/model/AbstractItem;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/tabswitcher/model/Model;",
            "Lde/mrapp/android/util/view/AttachedViewRecycler<",
            "Lde/mrapp/android/tabswitcher/model/AbstractItem;",
            "*>;ZI)V"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;-><init>()V

    .line 112
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The model may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The view recycler may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/iterator/ItemIterator;->model:Lde/mrapp/android/tabswitcher/model/Model;

    .line 115
    iput-object p2, p0, Lde/mrapp/android/tabswitcher/iterator/ItemIterator;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    .line 116
    invoke-virtual {p0, p3, p4}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->initialize(ZI)V

    return-void
.end method

.method synthetic constructor <init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;ZILde/mrapp/android/tabswitcher/iterator/ItemIterator$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;ZI)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 2

    .line 121
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/iterator/ItemIterator;->model:Lde/mrapp/android/tabswitcher/model/Model;

    invoke-interface {v0}, Lde/mrapp/android/tabswitcher/model/Model;->getCount()I

    move-result v0

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/iterator/ItemIterator;->model:Lde/mrapp/android/tabswitcher/model/Model;

    invoke-interface {v1}, Lde/mrapp/android/tabswitcher/model/Model;->isAddTabButtonShown()Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getItem(I)Lde/mrapp/android/tabswitcher/model/AbstractItem;
    .locals 3

    if-nez p1, :cond_0

    .line 127
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/iterator/ItemIterator;->model:Lde/mrapp/android/tabswitcher/model/Model;

    invoke-interface {v0}, Lde/mrapp/android/tabswitcher/model/Model;->isAddTabButtonShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/iterator/ItemIterator;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-static {p1}, Lde/mrapp/android/tabswitcher/model/AddTabItem;->create(Lde/mrapp/android/util/view/AttachedViewRecycler;)Lde/mrapp/android/tabswitcher/model/AddTabItem;

    move-result-object p1

    return-object p1

    .line 130
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/iterator/ItemIterator;->model:Lde/mrapp/android/tabswitcher/model/Model;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/iterator/ItemIterator;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    .line 131
    invoke-interface {v0}, Lde/mrapp/android/tabswitcher/model/Model;->isAddTabButtonShown()Z

    move-result v2

    sub-int/2addr p1, v2

    invoke-static {v0, v1, p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p1

    return-object p1
.end method
