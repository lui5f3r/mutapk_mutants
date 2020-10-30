.class public Lorg/wikipedia/page/PageBackStackItem;
.super Lorg/wikipedia/model/BaseModel;
.source "PageBackStackItem.java"


# instance fields
.field private historyEntry:Lorg/wikipedia/history/HistoryEntry;

.field private scrollY:I

.field private title:Lorg/wikipedia/page/PageTitle;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/wikipedia/model/BaseModel;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 21
    iput-object p1, p0, Lorg/wikipedia/page/PageBackStackItem;->title:Lorg/wikipedia/page/PageTitle;

    .line 22
    iput-object p2, p0, Lorg/wikipedia/page/PageBackStackItem;->historyEntry:Lorg/wikipedia/history/HistoryEntry;

    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Nonnull parameter is in fact null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getHistoryEntry()Lorg/wikipedia/history/HistoryEntry;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/wikipedia/page/PageBackStackItem;->historyEntry:Lorg/wikipedia/history/HistoryEntry;

    return-object v0
.end method

.method public getScrollY()I
    .locals 1

    .line 40
    iget v0, p0, Lorg/wikipedia/page/PageBackStackItem;->scrollY:I

    return v0
.end method

.method public getTitle()Lorg/wikipedia/page/PageTitle;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/wikipedia/page/PageBackStackItem;->title:Lorg/wikipedia/page/PageTitle;

    return-object v0
.end method

.method public setScrollY(I)V
    .locals 0

    .line 44
    iput p1, p0, Lorg/wikipedia/page/PageBackStackItem;->scrollY:I

    return-void
.end method

.method public setTitle(Lorg/wikipedia/page/PageTitle;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lorg/wikipedia/page/PageBackStackItem;->title:Lorg/wikipedia/page/PageTitle;

    return-void
.end method
