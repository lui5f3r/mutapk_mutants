.class public abstract Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;
.super Ljava/lang/Object;
.source "AbstractItemIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lde/mrapp/android/tabswitcher/model/AbstractItem;",
        ">;"
    }
.end annotation


# instance fields
.field private current:Lde/mrapp/android/tabswitcher/model/AbstractItem;

.field private first:Lde/mrapp/android/tabswitcher/model/AbstractItem;

.field private index:I

.field private previous:Lde/mrapp/android/tabswitcher/model/AbstractItem;

.field private reverse:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final first()Lde/mrapp/android/tabswitcher/model/AbstractItem;
    .locals 1

    .line 184
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->first:Lde/mrapp/android/tabswitcher/model/AbstractItem;

    return-object v0
.end method

.method public abstract getCount()I
.end method

.method public abstract getItem(I)Lde/mrapp/android/tabswitcher/model/AbstractItem;
.end method

.method public final hasNext()Z
    .locals 4

    .line 211
    iget-boolean v0, p0, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->reverse:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 212
    iget v0, p0, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->index:I

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 214
    :cond_1
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->getCount()I

    move-result v0

    iget v3, p0, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->index:I

    sub-int/2addr v0, v3

    if-lt v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method protected final initialize(ZI)V
    .locals 3

    .line 163
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, -0x1

    const-string v2, "The start must be at least -1"

    invoke-virtual {v0, p2, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 164
    iput-boolean p1, p0, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->reverse:Z

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->previous:Lde/mrapp/android/tabswitcher/model/AbstractItem;

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 166
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->getCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput p2, p0, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->index:I

    if-eqz p1, :cond_2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_3

    .line 169
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->getCount()I

    move-result p1

    if-ge p2, p1, :cond_3

    .line 170
    invoke-virtual {p0, p2}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->getItem(I)Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->current:Lde/mrapp/android/tabswitcher/model/AbstractItem;

    goto :goto_2

    .line 172
    :cond_3
    iput-object v0, p0, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->current:Lde/mrapp/android/tabswitcher/model/AbstractItem;

    :goto_2
    return-void
.end method

.method public final next()Lde/mrapp/android/tabswitcher/model/AbstractItem;
    .locals 2

    .line 220
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->current:Lde/mrapp/android/tabswitcher/model/AbstractItem;

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->previous:Lde/mrapp/android/tabswitcher/model/AbstractItem;

    .line 223
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->first:Lde/mrapp/android/tabswitcher/model/AbstractItem;

    if-nez v1, :cond_0

    .line 224
    iput-object v0, p0, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->first:Lde/mrapp/android/tabswitcher/model/AbstractItem;

    .line 227
    :cond_0
    iget v0, p0, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->index:I

    invoke-virtual {p0, v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->getItem(I)Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->current:Lde/mrapp/android/tabswitcher/model/AbstractItem;

    .line 228
    iget v0, p0, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->index:I

    iget-boolean v1, p0, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->reverse:Z

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->index:I

    .line 229
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->current:Lde/mrapp/android/tabswitcher/model/AbstractItem;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->next()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v0

    return-object v0
.end method

.method public final peek()Lde/mrapp/android/tabswitcher/model/AbstractItem;
    .locals 2

    .line 206
    iget v0, p0, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->index:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->index:I

    invoke-virtual {p0, v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->getItem(I)Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final previous()Lde/mrapp/android/tabswitcher/model/AbstractItem;
    .locals 1

    .line 195
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->previous:Lde/mrapp/android/tabswitcher/model/AbstractItem;

    return-object v0
.end method
