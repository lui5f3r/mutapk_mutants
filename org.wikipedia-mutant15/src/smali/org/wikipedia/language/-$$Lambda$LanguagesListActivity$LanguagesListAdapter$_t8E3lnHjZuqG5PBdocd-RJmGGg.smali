.class public final synthetic Lorg/wikipedia/language/-$$Lambda$LanguagesListActivity$LanguagesListAdapter$_t8E3lnHjZuqG5PBdocd-RJmGGg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/language/-$$Lambda$LanguagesListActivity$LanguagesListAdapter$_t8E3lnHjZuqG5PBdocd-RJmGGg;->f$0:Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;

    iput p2, p0, Lorg/wikipedia/language/-$$Lambda$LanguagesListActivity$LanguagesListAdapter$_t8E3lnHjZuqG5PBdocd-RJmGGg;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/language/-$$Lambda$LanguagesListActivity$LanguagesListAdapter$_t8E3lnHjZuqG5PBdocd-RJmGGg;->f$0:Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;

    iget v1, p0, Lorg/wikipedia/language/-$$Lambda$LanguagesListActivity$LanguagesListAdapter$_t8E3lnHjZuqG5PBdocd-RJmGGg;->f$1:I

    invoke-virtual {v0, v1, p1}, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->lambda$onBindViewHolder$0$LanguagesListActivity$LanguagesListAdapter(ILandroid/view/View;)V

    return-void
.end method
