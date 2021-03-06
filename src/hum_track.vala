/*
 * hum_track.vala
 * 
 * This file is part of Hum, the low calorie music manager.
 * 
 * Copyright (C) 2007-2010 by Brian Davis <brian.william.davis@gmail.com>
 *
 * Hum is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * Hum is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Hum; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, 
 * Boston, MA  02110-1301  USA
 */

namespace Hum
{
	public struct Track
	{
		public string uri;
		public string title;
		public string artist;
		public string album;
		public int track_number;
		public string release_date;
		public string genre;
		public string file_size;
		public string bitrate;
		//public string codec;

		// The track length is in nanoseconds.
		public int64 duration;
		
		// FIXME: Perhaps we should run the file through something else to extract
		//        the duration, etc.? taglib bindings come with Vala by default, but
		//        introduce another dependency. GStreamer might be another worthy
		//        choice.
		public Track (string uri)
		{
			this.uri = uri;
			this.title = GLib.Filename.display_basename (uri);
			this.track_number = 0;
			this.genre = "";
			this.artist = "Unknown Artist";
			this.album = "Unknown Album";
			this.release_date = "";
			this.duration = 0;
			this.file_size = "";
		}
	}
}

