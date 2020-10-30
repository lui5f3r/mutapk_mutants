.class final Lorg/wikipedia/userprofile/ContributionsFragment$createConsolidatedList$4;
.super Ljava/lang/Object;
.source "ContributionsFragment.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/userprofile/ContributionsFragment;->createConsolidatedList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/wikipedia/userprofile/Contribution;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/wikipedia/userprofile/ContributionsFragment$createConsolidatedList$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/userprofile/ContributionsFragment$createConsolidatedList$4;

    invoke-direct {v0}, Lorg/wikipedia/userprofile/ContributionsFragment$createConsolidatedList$4;-><init>()V

    sput-object v0, Lorg/wikipedia/userprofile/ContributionsFragment$createConsolidatedList$4;->INSTANCE:Lorg/wikipedia/userprofile/ContributionsFragment$createConsolidatedList$4;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 49
    check-cast p1, Lorg/wikipedia/userprofile/Contribution;

    check-cast p2, Lorg/wikipedia/userprofile/Contribution;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/userprofile/ContributionsFragment$createConsolidatedList$4;->compare(Lorg/wikipedia/userprofile/Contribution;Lorg/wikipedia/userprofile/Contribution;)I

    move-result p1

    return p1
.end method

.method public final compare(Lorg/wikipedia/userprofile/Contribution;Lorg/wikipedia/userprofile/Contribution;)I
    .locals 0

    .line 296
    invoke-virtual {p2}, Lorg/wikipedia/userprofile/Contribution;->getDate()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1}, Lorg/wikipedia/userprofile/Contribution;->getDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1
.end method
