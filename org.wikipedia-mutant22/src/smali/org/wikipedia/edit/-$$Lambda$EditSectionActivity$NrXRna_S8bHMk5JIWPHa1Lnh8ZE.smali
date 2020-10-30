.class public final synthetic Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$NrXRna_S8bHMk5JIWPHa1Lnh8ZE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/edit/EditSectionActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/edit/EditSectionActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$NrXRna_S8bHMk5JIWPHa1Lnh8ZE;->f$0:Lorg/wikipedia/edit/EditSectionActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$NrXRna_S8bHMk5JIWPHa1Lnh8ZE;->f$0:Lorg/wikipedia/edit/EditSectionActivity;

    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    invoke-virtual {v0, p1}, Lorg/wikipedia/edit/EditSectionActivity;->lambda$fetchSectionText$12$EditSectionActivity(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)V

    return-void
.end method
