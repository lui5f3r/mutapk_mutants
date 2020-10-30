.class public Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIteratorBuilder;
.super Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;
.source "AbstractTabSwitcherLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InitialItemIteratorBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder<",
        "Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIteratorBuilder;",
        "Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;",
        ">;"
    }
.end annotation


# instance fields
.field private final backingArray:[Lde/mrapp/android/tabswitcher/model/AbstractItem;

.field final synthetic this$0:Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;


# direct methods
.method public constructor <init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;[Lde/mrapp/android/tabswitcher/model/AbstractItem;)V
    .locals 1

    .line 231
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIteratorBuilder;->this$0:Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;-><init>()V

    .line 232
    sget-object p1, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v0, "The backing array may not be null"

    invoke-virtual {p1, p2, v0}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    iput-object p2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIteratorBuilder;->backingArray:[Lde/mrapp/android/tabswitcher/model/AbstractItem;

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;
    .locals 1

    .line 214
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIteratorBuilder;->create()Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;

    move-result-object v0

    return-object v0
.end method

.method public create()Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;
    .locals 7

    .line 239
    new-instance v6, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIteratorBuilder;->this$0:Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIteratorBuilder;->backingArray:[Lde/mrapp/android/tabswitcher/model/AbstractItem;

    iget-boolean v3, p0, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->reverse:Z

    iget v4, p0, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->start:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;-><init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;[Lde/mrapp/android/tabswitcher/model/AbstractItem;ZILde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$1;)V

    return-object v6
.end method
