.class public abstract Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;
.super Ljava/lang/Object;
.source "AbstractItemIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BuilderType:",
        "Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder<",
        "*TProductType;>;ProductType:",
        "Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected reverse:Z

.field protected start:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->reverse(Z)Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;

    const/4 v0, -0x1

    .line 64
    invoke-virtual {p0, v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->start(I)Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;

    return-void
.end method

.method private self()Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public abstract create()Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TProductType;"
        }
    .end annotation
.end method

.method public reverse(Z)Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TBuilderType;"
        }
    .end annotation

    .line 86
    iput-boolean p1, p0, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->reverse:Z

    .line 87
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->self()Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;

    return-object p0
.end method

.method public start(I)Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 101
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, -0x1

    const-string v2, "The start must be at least -1"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 102
    iput p1, p0, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->start:I

    .line 103
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->self()Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;

    return-object p0
.end method
