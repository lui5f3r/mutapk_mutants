.class public Lorg/wikipedia/feed/onthisday/OnThisDay;
.super Ljava/lang/Object;
.source "OnThisDay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/feed/onthisday/OnThisDay$Event;
    }
.end annotation


# instance fields
.field private births:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/onthisday/OnThisDay$Event;",
            ">;"
        }
    .end annotation
.end field

.field private deaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/onthisday/OnThisDay$Event;",
            ">;"
        }
    .end annotation
.end field

.field private events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/onthisday/OnThisDay$Event;",
            ">;"
        }
    .end annotation
.end field

.field private holidays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/onthisday/OnThisDay$Event;",
            ">;"
        }
    .end annotation
.end field

.field private selected:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/onthisday/OnThisDay$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$events$0(Lorg/wikipedia/feed/onthisday/OnThisDay$Event;Lorg/wikipedia/feed/onthisday/OnThisDay$Event;)I
    .locals 0

    .line 41
    invoke-virtual {p1}, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year()I

    move-result p1

    invoke-virtual {p0}, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public events()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/onthisday/OnThisDay$Event;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDay;->events:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 32
    :cond_0
    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDay;->births:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 35
    :cond_1
    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDay;->deaths:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 38
    :cond_2
    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDay;->holidays:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 41
    :cond_3
    sget-object v1, Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDay$eHX5je6Gufxw7HRx2k27NNXY1Ho;->INSTANCE:Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDay$eHX5je6Gufxw7HRx2k27NNXY1Ho;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public selectedEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/onthisday/OnThisDay$Event;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDay;->selected:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public setSelected(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/onthisday/OnThisDay$Event;",
            ">;)V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDay;->selected:Ljava/util/List;

    return-void
.end method
