.class public Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator$Builder;
.super Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;
.source "ArrayItemIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder<",
        "Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator$Builder;",
        "Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator;",
        ">;"
    }
.end annotation


# instance fields
.field private final array:[Lde/mrapp/android/tabswitcher/Tab;

.field private final firstIndex:I

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
.method public constructor <init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;[Lde/mrapp/android/tabswitcher/Tab;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/tabswitcher/model/Model;",
            "Lde/mrapp/android/util/view/AttachedViewRecycler<",
            "Lde/mrapp/android/tabswitcher/model/AbstractItem;",
            "*>;[",
            "Lde/mrapp/android/tabswitcher/Tab;",
            "I)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;-><init>()V

    .line 85
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The model may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The view recycler may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The array may not be null"

    invoke-virtual {v0, p3, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x0

    const-string v2, "The first index must be at least 0"

    invoke-virtual {v0, p4, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 89
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator$Builder;->model:Lde/mrapp/android/tabswitcher/model/Model;

    .line 90
    iput-object p2, p0, Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator$Builder;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    .line 91
    iput-object p3, p0, Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator$Builder;->array:[Lde/mrapp/android/tabswitcher/Tab;

    .line 92
    iput p4, p0, Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator$Builder;->firstIndex:I

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator;

    move-result-object v0

    return-object v0
.end method

.method public create()Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator;
    .locals 9

    .line 98
    new-instance v8, Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator$Builder;->model:Lde/mrapp/android/tabswitcher/model/Model;

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator$Builder;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    iget-object v3, p0, Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator$Builder;->array:[Lde/mrapp/android/tabswitcher/Tab;

    iget v4, p0, Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator$Builder;->firstIndex:I

    iget-boolean v5, p0, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->reverse:Z

    iget v6, p0, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->start:I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;[Lde/mrapp/android/tabswitcher/Tab;IZILde/mrapp/android/tabswitcher/iterator/ArrayItemIterator$1;)V

    return-object v8
.end method
