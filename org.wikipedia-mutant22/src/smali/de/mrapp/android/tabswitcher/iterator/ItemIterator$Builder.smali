.class public Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;
.super Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;
.source "ItemIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/tabswitcher/iterator/ItemIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder<",
        "Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;",
        "Lde/mrapp/android/tabswitcher/iterator/ItemIterator;",
        ">;"
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
.method public constructor <init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/tabswitcher/model/Model;",
            "Lde/mrapp/android/util/view/AttachedViewRecycler<",
            "Lde/mrapp/android/tabswitcher/model/AbstractItem;",
            "*>;)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;-><init>()V

    .line 67
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The model may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The view recycler may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;->model:Lde/mrapp/android/tabswitcher/model/Model;

    .line 70
    iput-object p2, p0, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/ItemIterator;

    move-result-object v0

    return-object v0
.end method

.method public create()Lde/mrapp/android/tabswitcher/iterator/ItemIterator;
    .locals 7

    .line 76
    new-instance v6, Lde/mrapp/android/tabswitcher/iterator/ItemIterator;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;->model:Lde/mrapp/android/tabswitcher/model/Model;

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    iget-boolean v3, p0, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->reverse:Z

    iget v4, p0, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->start:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;ZILde/mrapp/android/tabswitcher/iterator/ItemIterator$1;)V

    return-object v6
.end method
