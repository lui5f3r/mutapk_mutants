.class final Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$1$1;
.super Ljava/lang/Object;
.source "SuggestedEditsTasksFragment.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$1;->apply(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;
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
        "Lorg/wikipedia/dataclient/mwapi/UserContribution;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$1$1;

    invoke-direct {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$1$1;-><init>()V

    sput-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$1$1;->INSTANCE:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$1$1;

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

    .line 47
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/UserContribution;

    check-cast p2, Lorg/wikipedia/dataclient/mwapi/UserContribution;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$1$1;->compare(Lorg/wikipedia/dataclient/mwapi/UserContribution;Lorg/wikipedia/dataclient/mwapi/UserContribution;)I

    move-result p1

    return p1
.end method

.method public final compare(Lorg/wikipedia/dataclient/mwapi/UserContribution;Lorg/wikipedia/dataclient/mwapi/UserContribution;)I
    .locals 0

    .line 185
    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/UserContribution;->date()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/UserContribution;->date()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1
.end method
