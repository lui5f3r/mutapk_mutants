.class final Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$4;
.super Ljava/lang/Object;
.source "ContributionsFragment.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/userprofile/ContributionsFragment;->fetchContributions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/BiFunction<",
        "Ljava/util/List<",
        "Lorg/wikipedia/userprofile/Contribution;",
        ">;",
        "Ljava/util/List<",
        "Lorg/wikipedia/userprofile/Contribution;",
        ">;",
        "Ljava/util/ArrayList<",
        "Lorg/wikipedia/userprofile/Contribution;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$4;

    invoke-direct {v0}, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$4;-><init>()V

    sput-object v0, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$4;->INSTANCE:Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$4;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$4;->apply(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/userprofile/Contribution;",
            ">;",
            "Ljava/util/List<",
            "Lorg/wikipedia/userprofile/Contribution;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lorg/wikipedia/userprofile/Contribution;",
            ">;"
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 261
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method
