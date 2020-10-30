.class public final synthetic Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$PNxVkfTex4coXEIH51CgsPkxCqE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$OpenPageListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/gallery/GalleryActivity;

.field public final synthetic f$1:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/gallery/GalleryActivity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$PNxVkfTex4coXEIH51CgsPkxCqE;->f$0:Lorg/wikipedia/gallery/GalleryActivity;

    iput-object p2, p0, Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$PNxVkfTex4coXEIH51CgsPkxCqE;->f$1:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    return-void
.end method


# virtual methods
.method public final open()V
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$PNxVkfTex4coXEIH51CgsPkxCqE;->f$0:Lorg/wikipedia/gallery/GalleryActivity;

    iget-object v1, p0, Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$PNxVkfTex4coXEIH51CgsPkxCqE;->f$1:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    invoke-virtual {v0, v1}, Lorg/wikipedia/gallery/GalleryActivity;->lambda$onActivityResult$4$GalleryActivity(Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V

    return-void
.end method
