.class public Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator;
.super Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;
.source "ArrayItemIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator$Builder;
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
.method private constructor <init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;[Lde/mrapp/android/tabswitcher/Tab;IZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/tabswitcher/model/Model;",
            "Lde/mrapp/android/util/view/AttachedViewRecycler<",
            "Lde/mrapp/android/tabswitcher/model/AbstractItem;",
            "*>;[",
            "Lde/mrapp/android/tabswitcher/Tab;",
            "IZI)V"
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;-><init>()V

    .line 151
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The model may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The view recycler may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The array may not be null"

    invoke-virtual {v0, p3, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x0

    const-string v2, "The first index must be at least 0"

    invoke-virtual {v0, p4, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 155
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator;->model:Lde/mrapp/android/tabswitcher/model/Model;

    .line 156
    iput-object p2, p0, Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    .line 157
    iput-object p3, p0, Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator;->array:[Lde/mrapp/android/tabswitcher/Tab;

    .line 158
    iput p4, p0, Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator;->firstIndex:I

    .line 159
    invoke-virtual {p0, p5, p6}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->initialize(ZI)V

    return-void
.end method

.method synthetic constructor <init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;[Lde/mrapp/android/tabswitcher/Tab;IZILde/mrapp/android/tabswitcher/iterator/ArrayItemIterator$1;)V
    .locals 0

    .line 31
    invoke-direct/range {p0 .. p6}, Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;[Lde/mrapp/android/tabswitcher/Tab;IZI)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 164
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator;->array:[Lde/mrapp/android/tabswitcher/Tab;

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Lde/mrapp/android/tabswitcher/model/AbstractItem;
    .locals 4

    .line 170
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator;->model:Lde/mrapp/android/tabswitcher/model/Model;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    iget v2, p0, Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator;->firstIndex:I

    add-int/2addr v2, p1

    iget-object v3, p0, Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator;->array:[Lde/mrapp/android/tabswitcher/Tab;

    aget-object p1, v3, p1

    invoke-static {v0, v1, v2, p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;ILde/mrapp/android/tabswitcher/Tab;)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p1

    return-object p1
.end method
